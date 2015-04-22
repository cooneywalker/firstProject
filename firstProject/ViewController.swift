//
//  ViewController.swift
//  firstProject
//
//  Created by 東 正樹 on 2015/04/16.
//  Copyright (c) 2015年 cooneywalker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        @IBOutlet weak var messageLabel: UILabel!
        @IBOutlet weak var enterNameTextField: UITextField!
        @IBOutlet weak var enterMessageTxtFeild: UITextField!
        @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func sendMailButton(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTxtFeild.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTxtFeild.text = ""
        enterMessageTxtFeild.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

