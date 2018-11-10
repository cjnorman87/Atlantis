//
//  StretchyHeader.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 6/8/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit
import GSKStretchyHeaderView

class StretchyHeader : GSKStretchyHeaderView {
    
    var headerImageOnTop = false
    
    let profileIcon : UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.backgroundColor  = .white
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "placeholderImg")
        iv.layer.borderColor = UIColor.white.cgColor
        iv.layer.borderWidth = 3
        iv.layer.cornerRadius = 60
        return iv
    }()
    
    let headerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.rgb(red: 136, green: 206, blue: 235)
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "John Peterson"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.white
        return label
    }()
    
    let headlineLabel : UILabel = {
        let label = UILabel()
        label.text = "Aspiring Entrepreneur | Mentor"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.white
        return label
    }()
    
    let educationAndLocationLabel : UILabel = {
        let label = UILabel()
        let attributedTitle = NSMutableAttributedString(string: "University of Texas at Austin", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        attributedTitle.append(NSAttributedString(string: " • ", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white]))
        attributedTitle.append(NSAttributedString(string: "Houston, Texas", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white]))
        label.attributedText = attributedTitle
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    let candidateStatus : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Status", for: .normal)
        button.setTitleColor(UIColor.rgb(red: 136, green: 205, blue: 235), for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 18
        button.showsTouchWhenHighlighted = true
        return button
    }()
    
    let candidateSummary : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "All Senior Countdown participants are guaranteed to get the courses they need — just follow the course plan that you worked out with your academic advisor. And if you need some help along the way, contact the Graduation Help Desk at graduationhelpdesk@utexas.edu."
        label.numberOfLines = 5
        label.textColor = UIColor.white
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentAnchor = .bottom
        
        
        backgroundColor = UIColor.rgb(red: 136, green: 206, blue: 235)
        minimumContentHeight = 0
        maximumContentHeight = 340
        
        setupNewHeader()
        //setupUserHeader()
        
    }
    
    
    func setupNewHeader() {
        addSubview(profileIcon)
        profileIcon.anchor(top: topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 120, height: 120)
        profileIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(nameLabel)
        nameLabel.anchor(top: profileIcon.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(headlineLabel)
        headlineLabel.anchor(top: nameLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        headlineLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(educationAndLocationLabel)
        educationAndLocationLabel.anchor(top: headlineLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        educationAndLocationLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(candidateStatus)
        candidateStatus.anchor(top: educationAndLocationLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 35)
        candidateStatus.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(candidateSummary)
        candidateSummary.anchor(top: candidateStatus.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 8, paddingLeft: 15, paddingBottom: 0, paddingRight: -15, width: 0, height: 0)
        candidateSummary.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
    
    
    
    func setupUserHeader() {
        addSubview(candidateSummary)
        candidateSummary.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 15, paddingBottom: -15, paddingRight: -15, width: 0, height: 0)
        candidateSummary.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(candidateStatus)
        candidateStatus.anchor(top: nil, left: nil, bottom: candidateSummary.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: -10, paddingRight: 0, width: 100, height: 35)
        candidateStatus.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(educationAndLocationLabel)
        educationAndLocationLabel.anchor(top: nil, left: nil, bottom: candidateStatus.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: -6, paddingRight: 0, width: 0, height: 0)
        educationAndLocationLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        
        addSubview(headlineLabel)
        headlineLabel.anchor(top: nil, left: nil, bottom: educationAndLocationLabel.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: -6, paddingRight: 0, width: 0, height: 0)
        headlineLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(nameLabel)
        nameLabel.anchor(top: nil, left: nil, bottom: headlineLabel.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: -6, paddingRight: 0, width: 0, height: 0)
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(profileIcon)
        profileIcon.anchor(top: nil, left: nil, bottom: nameLabel.topAnchor, right: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: -10, paddingRight: 0, width: 120, height: 120)
        profileIcon.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setupProfileImage() {
        
        let profile = UIImageView()
        profile.image = #imageLiteral(resourceName: "placeholderImg")
        profile.layer.borderWidth = 2
        profile.layer.borderColor = UIColor.white.cgColor
        profile.layer.cornerRadius = 60
        profile.clipsToBounds = true
        
        let shadow = CALayer()
        shadow.shadowColor = UIColor.black.cgColor
        shadow.shadowOpacity = 1
        shadow.shadowRadius = 7
        shadow.shadowOffset = CGSize(width: 0, height: 5)
        
        addSubview(profile)
        //        layer.addSublayer(shadow)
        //        shadow.addSublayer(profile.layer)
        
        
        profile.anchor(top: nil, left: nil, bottom: nameLabel.topAnchor, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: -10, paddingRight: 0, width: 120, height: 120)
        profile.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        //layer.addSublayer(shadow)
    }
    
    func fixHeaderHeight() {
        addSubview(headerView)
        headerView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        headerView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        headerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        headerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        
        if headerImageOnTop == true {
            headerView.heightAnchor.constraint(equalToConstant: 0).isActive = true
        } else {
            headerView.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 60).isActive = true
        }
        
    }
    
    override func didChangeStretchFactor(_ stretchFactor: CGFloat) {
        
        var alpha : CGFloat = 1
        var blurAlpha : CGFloat = 1
        
        if stretchFactor > 1.5 {
            
            alpha = CGFloatTranslateRange(stretchFactor, 1, 1.12, 1, 0)
            blurAlpha = alpha
            
        } else if stretchFactor < 0.9 {
            
            alpha = CGFloatTranslateRange(stretchFactor, 0.8, 0.2, 1, 0)
            
        }
        
        profileIcon.alpha = alpha
        candidateSummary.alpha = alpha
        candidateStatus.alpha = alpha
        nameLabel.alpha = alpha
        headlineLabel.alpha = alpha
        educationAndLocationLabel.alpha = alpha
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



