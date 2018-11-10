//
//  ApplicantScreen.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 5/30/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView


class ApplicantScreenViewController : UITableViewController {
    
    var header : StretchyHeader!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.rgb(red: 220, green: 220, blue: 220)
        
        
        tableView.delegate = self
        
        tableView.register(EducationCell.self, forCellReuseIdentifier: "educationCell")
        tableView.register(ExperienceCell.self , forCellReuseIdentifier: "experienceCell")
        tableView.register(SkillsCell.self , forCellReuseIdentifier: "skillsCell")
        
        
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        tableView.alwaysBounceVertical = true
        navigationController?.navigationBar.tintColor = .white
        header = StretchyHeader(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 120))
        tableView.addSubview(header)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 2 {
            return 35
        } else {
            return 80
        }
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 10))
        header.backgroundColor = .white
        
        let label = UILabel()
        label.textColor = UIColor(white: 0.4, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontSizeToFitWidth = true
        header.addSubview(label)
        label.anchor(top: header.topAnchor, left: header.leftAnchor, bottom: header.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: -5, paddingRight: 0, width: 0, height: 0)
        
        if section == 0 {
            label.text = "Education"
        } else if section == 1 {
            label.text = "Experience"
        } else if section == 2 {
            label.text = "Skills"
        }
        
        return header
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "educationCell", for: indexPath) as! EducationCell
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "experienceCell", for: indexPath) as! ExperienceCell
            return cell
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "skillsCell", for: indexPath) as! SkillsCell
            return cell
        }
        
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
    }
    
    
    
}



