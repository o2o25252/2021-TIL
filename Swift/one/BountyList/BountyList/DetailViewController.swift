//
//  DetailViewController.swift
//  BountyList
//
//  Created by 임희찬 on 2021/03/04.
//

import UIKit

class DetailViewController: UIViewController {
        
    @IBOutlet  weak var imagView : UIImageView!
    @IBOutlet  weak var nameLabel : UILabel!
    @IBOutlet  weak var bountyLabel : UILabel!
    
    var name: String?
    var bounty: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        if let name = self.name, let bounty = self.bounty {
            let img = UIImage(named: "\(name).jpg")
            imagView.image = img
            nameLabel.text = name
            bountyLabel.text = "\(bounty)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
            //이 클로즈 누룰시 뷰컨트롤러가 사라진다.
        dismiss(animated: true, completion: nil)
    }

}
