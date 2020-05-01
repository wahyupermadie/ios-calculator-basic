//
//  ViewController.swift
//  Hello Dicoding
//
//  Created by Wahyu Permadi on 01/05/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPanjang: UITextField!
    @IBOutlet weak var tfLebar: UITextField!
    @IBOutlet weak var tfResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetView()
    }
    
    private func resetView(){
        tfPanjang.text = "0"
        tfLebar.text = "0"
        tfResult.text = "0"
    }
    
    @IBAction func getResult(_ sender: Any) {
        
        if let width = Double(tfLebar.text ?? "0"),
            let height = Double(tfPanjang.text ?? "0") {
            tfResult.text = String(width * height)
        }else{
            tfResult.text = "Input Salah"
        }
    }
    
    @IBAction func resetValue(_ sender: Any) {
        resetView()
    }
    
}

