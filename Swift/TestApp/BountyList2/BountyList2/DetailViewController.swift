//
//  DetailViewController.swift
//  BountyList2
//
//  Created by 임희찬 on 2021/03/08.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    //이름과 현상금 정보로 3개의 값을 뽑을 수 있다.
//    var name: String?
//    var bounty: Int?
    //🧑🏻‍💻 MODEL
    //var bountyInfo : BountyInfo?
    // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다. 그래서 주석처리
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
    let viewModel = DetailViewModel()
    // 아니 근데 클레스 인데 왜 뒤에 () 이걸 사용하는 걸까??
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    override func viewDidLoad() {//컨트롤러의 뷰가 메모리에로드 된 후 호출
        super.viewDidLoad()
        //이 메서드를 재정의 super하는 경우 슈퍼 클래스도이 메서드를 재정의하는 경우 구현의 특정 지점 에서이 메서드를 호출합니다 .
        
        UpdateUI()
        //그래서 이게 실행된후 UpdateUI 를 부르면 이미 데이터를 받은 상태 이겠구나! 
    }
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    func UpdateUI() {
        //🧑🏻‍💻 MODEL
//        if let bountyInfo = self.bountyInfo {
//            imgView.image = bountyInfo.image
//            nameLabel.text = bountyInfo.name
//            bountyLabel.text = "\(bountyInfo.bounty)"
//        }
        // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
//        if let name = self.name , let bounty = self.bounty {
//            //아마도 여기에 온다는 것은 앞에서 이미 하나의 셀을 선택하여 그 셀의정보를 보낸거 일 꺼다.
//            let img = UIImage(named: "\(name).jpg")
//            imgView.image = img
//            nameLabel.text = name
//            bountyLabel.text = "\(bounty)"
//        }
        
    }
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    @IBAction func close(_ sender: Any) {
        //사라지기 dissmise
        //completion 은 얘가 사라진 후 에 동작될 것
        dismiss(animated: true, completion: nil)
    }
    
}


// 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
class DetailViewModel  {
    var bountyInfo : BountyInfo?
    
    func update(model: BountyInfo?) {
        bountyInfo = model
    }
}
