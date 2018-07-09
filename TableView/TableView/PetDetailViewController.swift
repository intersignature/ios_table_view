//
//  PetDetailViewController.swift
//  TableView
//
//  Created by Sirichai Binchai on 9/7/2561 BE.
//  Copyright © 2561 Sirichai Binchai. All rights reserved.
//

import UIKit

class PetDetailViewController: UIViewController {

    var pet:Pet = Pet()
    
    @IBOutlet weak var detailLb: UILabel!
    @IBOutlet weak var pictureImg: UIImageView!
    @IBOutlet weak var nameLb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLb.text = pet.name
        detailLb.text = pet.detail
        pictureImg.image = pet.picture
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
