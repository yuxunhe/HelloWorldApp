//
//  ViewController.swift
//  HelenDemo
//
//  Created by Helen He on 8/28/18.
//  Copyright © 2018 Helen He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var stringTextField: UITextField!
    @IBOutlet weak var catImage: UIImageView!
    var backgroundColor: UIColor!
    var defaultString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor = view.backgroundColor
        defaultString = "Hey! Enter something!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.magenta
    }
    
    @IBAction func didTapChangeViewColorButton(_ sender: Any) {
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func onTapReset(_ sender: Any) {
        textLabel.text = "Hello from Helen, the cat"
        textLabel.textColor = UIColor.white
        view.backgroundColor = backgroundColor
        catImage.alpha = 0
        textLabel.alpha = 1
    }

    @IBAction func didTapChangeStringButton(_ sender: Any) {
        if stringTextField.text=="" {
            textLabel.text = defaultString
        } else {
            textLabel.text = stringTextField.text
            stringTextField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func didTapCatButton(_ sender: Any) {
        catImage.alpha = 1
        textLabel.alpha = 0
    }
}

