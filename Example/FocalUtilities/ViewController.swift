//
//  ViewController.swift
//  FocalUtilities
//
//  Created by saranonuan on 11/10/2017.
//  Copyright (c) 2017 saranonuan. All rights reserved.
//

import UIKit
import FocalUtilities

class ViewController: UIViewController {

    @IBOutlet weak var colorInput: UITextField!
    @IBOutlet weak var colorOutput: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorInput.text = self.colorOutput.backgroundColor?.toHexString() ?? ""
    }

    @IBAction func applyColorTouched(_ sender: Any) {
        let colorHexCode = self.colorInput.text;
        if let colorHexCode = colorHexCode {
            self.colorOutput.backgroundColor = UIColor(hexString: colorHexCode)
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
}
