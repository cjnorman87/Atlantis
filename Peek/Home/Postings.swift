//
//  PostingsPage.swift
//  LayoutOfPeek
//
//  Created by Jacorey Brown on 8/28/18.
//  Copyright © 2018 Jacorey Brown. All rights reserved.
//

import UIKit

class Postings : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let postCellID = "PostCellID"
    let appCellID = "AppCellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.delegate = self
        collectionView?.backgroundColor = UIColor.rgb(red: 211, green: 211, blue: 211)
        
        collectionView?.register(PostCell.self, forCellWithReuseIdentifier: postCellID)
        collectionView?.register(AppCell.self , forCellWithReuseIdentifier: appCellID)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let postCell = collectionView.dequeueReusableCell(withReuseIdentifier: postCellID, for: indexPath)
            return postCell
        }
        
        let appCell = collectionView.dequeueReusableCell(withReuseIdentifier: appCellID, for: indexPath)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showApplicantScreen))
        appCell.addGestureRecognizer(tapGesture)
        return appCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return CGSize(width: view.frame.width, height: 150)
        }
        return CGSize(width: view.frame.width, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    @objc func showApplicantScreen() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets.init(top: 8, left: 0, bottom: 8, right: 0)
        
        
        let applicantScreen = ApplicantScreenViewController(style: UITableView.Style.grouped)
        navigationController?.pushViewController(applicantScreen, animated: true)
        
    }

}
