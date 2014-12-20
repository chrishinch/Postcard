//
//  ViewController.swift
//  Postcard
//
//  Created by Chris Hinch on 14/12/14.
//  Copyright (c) 2014 Chris Hinch. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPress(sender: UIButton)
    {
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder(); //hides keyboard
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        //adding a comment to test commits
        
    }

}

