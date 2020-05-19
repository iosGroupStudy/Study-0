//
//  ViewController.swift
//  Hi
//
//  Created by 김동욱 on 2020/05/18.
//  Copyright © 2020 sanichdaniel. All rights reserved.
//

import UIKit

class CouponViewController: UIViewController, UITextFieldDelegate {
    
    let label = UILabel()
    
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.text = "FEFE"
        let button: UIButton = UIButton(frame: CGRect(x: 150, y: 400, width: 100, height: 50))
        button.backgroundColor = .black
        button.setTitle("추가하기", for: .normal)
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        textField.frame = CGRect(x: 150, y: 200, width: 100, height: 50)
        textField.backgroundColor = .blue
        textField.addTarget(self, action: #selector(self.tf), for: .editingDidEndOnExit)
        textField.delegate = self

        view.addSubview(textField)
        self.view.addSubview(button)
    }

    @objc func buttonClicked() {
        print("Button Clicked")
    }
    
    @objc func tf() {
        print("FFDLFNSDFNL")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("######", textField.text)
    }

}

