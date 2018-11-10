//
//  EducationCell.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 6/21/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class EducationCell : UITableViewCell{
    
    let schoolIcon : UIImageView = {
       let view = UIImageView()
        view.image = #imageLiteral(resourceName: "placeholderImg")
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let schoolName : UILabel = {
       let title = UILabel()
        title.text = "The Unviversity of Texas at Austin"
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.boldSystemFont(ofSize: 14)
        return title
    }()
    
    let schoolDuration : UILabel = {
        let title = UILabel()
        title.text = "Mar 2012 - June 2016"
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = UIColor(white: 0.4, alpha: 0.8)
        return title
    }()
    
    
    let degreeType : UILabel = {
        let title = UILabel()
        title.text = "Bachelor of Science in Chemistry"
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 14)
        title.textColor = UIColor(white: 0.4, alpha: 0.8)
        return title
    }()
  
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        addSubview(schoolIcon)
        schoolIcon.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 50, height: 50)
        
        addSubview(schoolName)
        schoolName.anchor(top: schoolIcon.topAnchor, left: schoolIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(degreeType)
        degreeType.anchor(top: schoolName.topAnchor, left: schoolIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 18, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(schoolDuration)
        schoolDuration.anchor(top: degreeType.bottomAnchor, left: schoolIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 7, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    
    
    
}


