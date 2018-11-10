//
//  ExperienceCell.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 6/21/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class ExperienceCell : UITableViewCell {
    
    let experienceTitle : UILabel = {
       let title = UILabel()
        title.text = "Experience"
        title.font = UIFont.systemFont(ofSize: 16)
        title.textColor = UIColor.lightGray
        return title
    }()
    
    let experienceDuration : UILabel = {
       let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Mar 2017 - Present"
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = UIColor(white: 0.4, alpha: 0.8)
        return title
    }()
    
    let companyName : UILabel = {
       let title = UILabel()
        title.text = "Apple"
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 14)
        return title
    }()
    
    let experienceIcon : UIImageView = {
       let view = UIImageView()
        view.image = #imageLiteral(resourceName: "placeholderImg")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let experienceSummary : UILabel = {
       let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 12)
        title.text = "I used to develop a system at Apple in order to complement Apple pay"
        return title
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        
        setupCell()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        
        addSubview(experienceIcon)
        experienceIcon.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 3, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 50, height: 50)
        
        addSubview(experienceTitle)
        experienceTitle.anchor(top: experienceIcon.topAnchor, left: experienceIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(companyName)
        companyName.anchor(top: experienceTitle.bottomAnchor, left: experienceIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 6, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(experienceDuration)
        experienceDuration.anchor(top: companyName.bottomAnchor, left: experienceIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 2, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        
        
        
        
    }
    
    
}




