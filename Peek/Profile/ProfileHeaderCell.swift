//
//  ProfileHeaderCell.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 9/1/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class ProfileHeaderCell : UICollectionViewCell {
    
    let profileIcon : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = #imageLiteral(resourceName: "placeholderImg")
        icon.layer.borderWidth = 2
        icon.layer.borderColor = UIColor.red.cgColor
        icon.clipsToBounds = true
        return icon
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.rgb(red: 136, green: 206, blue: 235)
        
        setupProfileIcon()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupProfileIcon() {
        addSubview(profileIcon)
        profileIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profileIcon.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20).isActive = true
        profileIcon.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profileIcon.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profileIcon.layer.cornerRadius = 50
    }
    
    
}
