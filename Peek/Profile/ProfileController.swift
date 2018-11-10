//
//  ProfileController.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 5/29/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit
import Firebase

class ProfileController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"
    
    let settings : [Setting] = {
        
        let profileSetting = Setting(name: .Profile, imageName: "settingsProfile")
        let feedbackSetting = Setting(name: .Feedback, imageName: "feedback")
        let signOut = Setting(name: .SignOut, imageName: "logout")
        
        return [profileSetting, feedbackSetting, signOut]
        }()
    
    let profileHeader : UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.rgb(red: 136, green: 206, blue: 235)
        return view
    }()
    
    let userProfileImage : UIImageView = {
       let view = UIImageView()
        view.image = #imageLiteral(resourceName: "Plus_Photo")
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
       let tb = UICollectionView(frame: .zero, collectionViewLayout: layout)
        tb.backgroundColor = .white
        tb.translatesAutoresizingMaskIntoConstraints = false
        tb.isScrollEnabled = false
        tb.dataSource = self
        tb.delegate = self
        return tb
    }()
    
    let changeProfilePhotoButton : UIButton = {
       let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Change Profile Photo", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        
        view.backgroundColor = .white
        
        setupProfileHeader()
        setupCollectionView()
        
        
    }
    
    func setupNavBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Profile"
    }
    
    func setupProfileHeader() {
        view.addSubview(profileHeader)
        profileHeader.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 200)
        profileHeader.addSubview(userProfileImage)
        userProfileImage.centerXAnchor.constraint(equalTo: profileHeader.centerXAnchor).isActive = true
        userProfileImage.centerYAnchor.constraint(equalTo: profileHeader.centerYAnchor).isActive = true
        userProfileImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        userProfileImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        view.addSubview(changeProfilePhotoButton)
        changeProfilePhotoButton.anchor(top: userProfileImage.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        changeProfilePhotoButton.centerXAnchor.constraint(equalTo: userProfileImage.centerXAnchor).isActive = true
        
    }
    
    func setupCollectionView() {
        collectionView.register(SettingsCell.self , forCellWithReuseIdentifier: cellID)
        view.addSubview(collectionView)
        collectionView.anchor(top: profileHeader.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! SettingsCell
        
        let settings = self.settings[indexPath.item]
        cell.setting = settings
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return settings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let setting = settings[indexPath.item]
        if setting.name == .Profile {
            let profileController = ApplicantProfile()
            navigationController?.pushViewController(profileController, animated: true)
            
        } else {
            if setting.name == .SignOut {
                handleLogOut()
            }
        }
    }
    
    fileprivate func handleLogOut() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        present(alertController, animated: true, completion: nil)
        alertController.addAction(UIAlertAction(title: "log out", style: .destructive, handler: { (_) in
            
            do{
                try Auth.auth().signOut()
                
                let loginController = LoginController()
                let navController = UINavigationController(rootViewController: loginController)
                self.present(navController, animated: true, completion: nil)
            } catch let signOutErr {
                print("Failed to sign out", signOutErr)
            }
            
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    }
}
