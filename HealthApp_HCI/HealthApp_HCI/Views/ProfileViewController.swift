//
//  ProfileViewController.swift
//  HealthApp_HCI
//
//  Created by Marty Nodado on 4/17/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.testLabel.text = "self-love"
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
