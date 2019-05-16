//
//  ViewController.swift
//  UIText
//
//  Created by asep abdaz on 16/05/19.
//  Copyright © 2019 Asep Abdaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ResultViewController{
            destination.fullname = fullNameTextField.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullNameTextField.delegate = self
        phoneTextField.delegate = self
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        if fullNameTextField.text == "" || phoneTextField.text == "" {
            let alert = UIAlertController(title: "Eror", message: "You must be complete", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }else{
            performSegue(withIdentifier: "toConformPage", sender: self)
        }
    }
    
}
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullNameTextField {
            phoneTextField.becomeFirstResponder()
        }else{
            phoneTextField.resignFirstResponder()
            performSegue(withIdentifier: "toConformPage", sender: self)
        }
        
        return true
    }
    
}

