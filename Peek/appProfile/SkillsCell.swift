//
//  ApplicantProfileInfoCell.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 6/4/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class SkillsCell : UITableViewCell {
    
    let skillsLabel : UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(white: 0.4, alpha: 0.6)
        label.text = "Microsoft Word"
        label.clipsToBounds = true
        return label
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        setupLabel()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel() {
        addSubview(skillsLabel)
        skillsLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 40, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
}
