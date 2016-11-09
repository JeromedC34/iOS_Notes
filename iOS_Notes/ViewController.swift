//
//  ViewController.swift
//  iOS_Notes
//
//  Created by imac on 09/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBAction func addNote(_ sender: UIButton) {
        if (textField.text != "") {
            if (textView.text != "") {
                textView.text = textView.text + "\n" + textField.text!
            } else {
                textView.text = textField.text
            }
            textField.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

