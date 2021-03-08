//
//  DetailViewController.swift
//  BountyList
//
//  Created by 임희찬 on 2021/03/04.
//

import UIKit

class DetailViewController: UIViewController {
        
    // MVVM
    
    // Model
    // BountyInfo
    // > BountyInfo Make!
    
    // View
    // - ListCell
    // > ListCell  이 필요한 정보를 ViewModel 한테서 받아야 겠다
    // > ListCell 은 ViewModel 로 부터 받은 정보로 뷰 업데이트 하기
    
    // ViewModel
    // -  BountyViewModel
    // > BountyViewModel 만들고 , 뷰 레이어 에서 필요한 메서드 만들기
    // > 모델 가지고 있기 , BountyInfo들 
    @IBOutlet  weak var imagView : UIImageView!
    @IBOutlet  weak var nameLabel : UILabel!
    @IBOutlet  weak var bountyLabel : UILabel!
    
    var bountyInfo: BountyInfo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        if let bountyInfo = self.bountyInfo{
            imagView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
//        if let name = self.name, let bounty = self.bounty {
//            let img = UIImage(named: "\(name).jpg")
////            imagView.image = img
////            nameLabel.text = name
////            bountyLabel.text = "\(bounty)"
//        }
    }
    
    @IBAction func close(_ sender: Any) {
            //이 클로즈 누룰시 뷰컨트롤러가 사라진다.
        dismiss(animated: true, completion: nil)
    }

}
