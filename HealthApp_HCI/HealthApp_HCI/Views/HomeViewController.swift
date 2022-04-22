//
//  HomeViewController.swift
//  HealthApp_HCI
//
//  Created by Marty Nodado on 4/17/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            
            flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeadingCell", for: indexPath) as! HeadingCell
            
            cell.headingLabel.text = "Welcome back nerd!"
            cell.subtitleLabel.text = "Today's Goal Progress"
            cell.backgroundColor = UIColor.white
            return cell
        }
        
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DailyGoalCell", for: indexPath) as! DailyGoalCell
            cell.headingLabel.text = "boom"
            cell.backgroundColor = UIColor(hex: "#F0F0F0FF")
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = view.frame.size.height
        let width = view.safeAreaLayoutGuide.layoutFrame.size.width * 0.9
        
        if indexPath.row == 0 {
            return CGSize(width: width, height: height * 0.2)
        } else {
            return CGSize(width: width, height: height * 0.125)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
