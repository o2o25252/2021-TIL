//
//  ViewController.swift
//  MyAlbum
//
//  Created by 임희찬 on 2021/01/27.
//

import UIKit

class ViewController: UIViewController {
    var currentValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
        
    }
    @IBOutlet weak var Price: UILabel!
        
    
    @IBAction func hellow(_ sender: Any) {
        let message = "가격은 $\(currentValue)입니다."
        let power = UIAlertController(title: "POWER !!", message: message, preferredStyle: .alert)
        let point = UIAlertAction(title: "POWER UP!", style: .default, handler: { action in self.refresh()})
        power.addAction(point)
        present(power, animated: true, completion: nil)
        
       
    }
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        Price.text = "$\(currentValue)"
    }
}

