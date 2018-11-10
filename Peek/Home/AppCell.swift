//
//  AppCell.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 8/28/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class AppCell : UICollectionViewCell {
    
    let profileIcon : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "J")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.borderColor = UIColor.black.cgColor
        iv.layer.borderWidth = 2
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let nameLabel : UILabel = {
        let lab = UILabel()
        lab.text = "Applicant Name"
        lab.font = UIFont.systemFont(ofSize: 16)
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.textColor = .black
        return lab
    }()
    
    let jobTitle : UILabel = {
        let lab = UILabel()
        lab.text = "Job title"
        lab.font = UIFont.systemFont(ofSize: 14)
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.textColor = UIColor.lightGray
        return lab
    }()
    
    let timeLabel : UILabel = {
        let lab = UILabel()
        lab.text = "Hour"
        lab.font = UIFont.systemFont(ofSize: 12)
        lab.translatesAutoresizingMaskIntoConstraints = false
        lab.textColor = UIColor.lightGray
        return lab
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setupProfileIcon()
        setupCellFont()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupProfileIcon() {
        addSubview(profileIcon)
        profileIcon.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
        profileIcon.layer.cornerRadius = 40
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showApplicantMedia))
        profileIcon.addGestureRecognizer(tapGesture)
        profileIcon.isUserInteractionEnabled = true
    }
    
    func setupCellFont() {
        addSubview(nameLabel)
        nameLabel.anchor(top: topAnchor, left: profileIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(jobTitle)
        jobTitle.anchor(top: nameLabel.bottomAnchor, left: profileIcon.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 18, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        addSubview(timeLabel)
        timeLabel.centerXAnchor.constraint(equalTo: profileIcon.centerXAnchor, constant: 0).isActive = true
        timeLabel.topAnchor.constraint(equalTo: profileIcon.bottomAnchor, constant: 5).isActive = true
    }
    
    @objc func showApplicantMedia() {
        print("showing applicant video")
    }
    
    
}

