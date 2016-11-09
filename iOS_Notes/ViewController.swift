//
//  ViewController.swift
//  iOS_Notes
//
//  Created by imac on 09/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults:UserDefaults = UserDefaults.standard
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
            textField.resignFirstResponder()
            defaults.set( textView.text , forKey: "myNote")
        }
    }
    func changeColor(_ sender: UIButton) {
        textView.backgroundColor = sender.backgroundColor
    }
    @IBAction func changeColor1(_ sender: UIButton) {
        changeColor(sender)
    }
    @IBAction func changeColor2(_ sender: UIButton) {
        changeColor(sender)
    }
    @IBAction func changeColor3(_ sender: UIButton) {
        changeColor(sender)
    }
    @IBAction func changeColor4(_ sender: UIButton) {
        changeColor(sender)
    }
    @IBAction func changeColor5(_ sender: UIButton) {
        changeColor(sender)
    }
    @IBAction func changeColor6(_ sender: UIButton) {
        changeColor(sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.text = defaults.string(forKey:"myNote")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

