//
//  ViewController.swift
//  firstProject
//
//  Created by student on 04/12/2019.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
   
    
    //code starts here
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performaingMath = false
    var storeOperation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performaingMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performaingMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
        
        
        
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != " " && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            
            
            if sender.tag == 12 //divide
            {
                label.text = "/"
            }
            else if sender.tag == 13 //miltiply
            {
                label.text = "x"
            }
            else if sender.tag == 14 //addition
            {
                label.text = "+"
            }
            else if sender.tag == 15//subtraction
            {
                label.text = "-"
                
            }
            storeOperation = sender.tag
            performaingMath = true
            
        }
        else if sender.tag == 16
        {
            if storeOperation == 12
            {
                label.text = String (previousNumber / numberOnScreen)
            }
            else if storeOperation == 13
            {
                label.text = String (previousNumber * numberOnScreen)
            }
            else if storeOperation == 14
            {
                label.text = String (previousNumber + numberOnScreen)
            }
            else if storeOperation == 15
            {
                label.text = String (previousNumber - numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            storeOperation = 0
        }
        
    }
    
    
    
    
//    @IBAction func Number1(_ sender: UIButton) {
//
//    }
//    @IBAction func Number2(_ sender: UIButton) {
//    }
//    @IBAction func Number3(_ sender: UIButton) {
//    }
//    @IBAction func Number4(_ sender: UIButton) {
//    }
//    @IBAction func Number5(_ sender: UIButton) {
//    }
//    @IBAction func Number6(_ sender: UIButton) {
//    }
//    @IBAction func Number7(_ sender: UIButton) {
//    }
//    @IBAction func Number8(_ sender: UIButton) {
//    }
//    @IBAction func Number9(_ sender: UIButton) {
//    }
//    @IBAction func Addition(_ sender: UIButton) {
//    }
//    @IBAction func Subtraction(_ sender: UIButton) {
//    }
//    @IBAction func Multiplication(_ sender: UIButton) {
//    }
//    @IBAction func equalButton(_ sender: UIButton) {
//    }
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

}
