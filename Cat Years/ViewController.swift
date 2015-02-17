//
//  ViewController.swift
//  Cat Years
//
//  Created by Vlad on 1/25/15.
//  Copyright (c) 2015 Vlad Luzin. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var ageInput: UITextField!
    
    @IBOutlet var ageResult: UILabel!

    @IBAction func getAgeBut(sender: AnyObject) {
        
       
        var enteredAge = ageInput.text.toInt()
        
        if enteredAge != nil {
        
            var catYears = enteredAge! * 7
            
            ageResult.text = "Вашему Коту \(catYears) человеческих лет"
            
        } else {
        
            ageResult.text = "Введите например: 7"
        
        }
        
        ageInput.delegate=self
        ageInput.resignFirstResponder()
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func textFieldShouldReturn(ageInput: UITextField!) -> Bool {
        
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

