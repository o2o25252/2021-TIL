//
//  ViewController.swift
//  MyAlbum
//
//  Created by 임희찬 on 2021/01/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hellow(_ sender: Any) {
        let power = UIAlertController(title: "POWER !!", message: "i am const", preferredStyle: .alert)
        let point = UIAlertAction(title: "POWER UP!", style: .default, handler: nil)
        power.addAction(point)
        present(power, animated: true, completion: nil)
    }
    
    @IBAction func qwer(_ sender: Any) {
        //팝업을 만드는 과정
        let alert = UIAlertController(title: "hellow?!", message: "my first text", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        //팝업을 띄우는 과정
        present(alert, animated:  true, completion: nil)
    }
}

