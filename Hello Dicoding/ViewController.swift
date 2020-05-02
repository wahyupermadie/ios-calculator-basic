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
        // Membuat button aksi untuk alert.
        let defaultAction = UIAlertAction(title: "Agree",
            style: .default) { (action) in
                self.resetView()
        }
           
        let cancelAction = UIAlertAction(title: "Disagree",
            style: .cancel) { (action) in
            // Merespon pengguna ketika memilih action ini.
        }
         
        // Membuat dan mengatur alert controller.
        let alert = UIAlertController(title: "Are you sure to reset the calculation result ?",
            message: "Click Agree to reset the result",
            preferredStyle: .alert)
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
                
        self.present(alert, animated: true)
    }
    
}

