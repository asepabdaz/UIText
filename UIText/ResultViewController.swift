//
//  ResultViewController.swift
//  UIText
//
//  Created by asep abdaz on 16/05/19.
//  Copyright © 2019 Asep Abdaz. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var viewTextFild: UILabel!
    var fullname : String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        viewTextFild.text = fullname
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
