//
//  ViewController.swift
//  Calculator
//
//  Created by Hisham Teima on 10/26/19.
//  Copyright © 2019 DEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberonscreen:Double = 0
    var previousnumber:Double = 0
    var performoperation = false
    var operation = 0
    
    @IBOutlet weak var DisplayNumber: UILabel!
    
    @IBAction func NumberTapped(_ sender: UIButton)
    {
        if performoperation == true
    {
        DisplayNumber.text = String(sender.tag-1)
        numberonscreen = Double(DisplayNumber.text!)!
        performoperation = false
    
    }
    
    else
    {
        DisplayNumber.text = DisplayNumber.text! + String(sender.tag-1)
        
        numberonscreen = Double(DisplayNumber.text!)!
        
    }
    }
    
    @IBAction func OperationTapped(_ sender: UIButton)
    {
        
        
        
        if DisplayNumber.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousnumber = Double(DisplayNumber.text!)!
            
            if sender.tag == 12 //Divided
            {
                DisplayNumber.text = "/"
            }
            
           else  if sender.tag == 13//Multiplication
            {
                DisplayNumber.text = "*"
            }
            else  if sender.tag == 14//subtraction
            {
                DisplayNumber.text = "-"
            }
            else  if sender.tag == 15//addition
            {
                DisplayNumber.text = "+"
            }
            operation = sender.tag
            performoperation = true
        }
            
            else if sender.tag == 16
            {
                if operation == 12
                {
                    DisplayNumber.text = String (previousnumber / numberonscreen)
                }
               else  if operation == 13
                {
                    DisplayNumber.text = String (previousnumber * numberonscreen)
                }
             else   if operation == 14
                {
                    DisplayNumber.text = String (previousnumber - numberonscreen)
                }
               else if operation == 15
                {
                    DisplayNumber.text = String (previousnumber + numberonscreen)
                }
                
            }
        else if sender.tag == 11
        {
            numberonscreen = 0
            DisplayNumber.text = ""
            operation=0
            previousnumber = 0
            
        
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

