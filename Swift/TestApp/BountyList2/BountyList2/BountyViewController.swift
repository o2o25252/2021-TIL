//
//  BountyViewController.swift
//  BountyList2
//
//  Created by 임희찬 on 2021/03/08.
//

import UIKit

class BountyViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    //🧑🏻‍💻 MODEL
    //⁉️VIEWMODEL 이 모델을 가지고 있어야 하므로 주석 처리 한거다.
//    let bountyInfoList : [BountyInfo] = [
//        BountyInfo(name: "brook" , bounty: 33000000),
//        BountyInfo(name: "chopper" , bounty: 50),
//        BountyInfo(name: "franky" , bounty: 44000000),
//        BountyInfo(name: "luffy" , bounty: 300000000),
//        BountyInfo(name: "nami" , bounty: 16000000),
//        BountyInfo(name: "robin" , bounty: 80000000),
//        BountyInfo(name: "sanji" , bounty: 77000000),
//        BountyInfo(name: "zoro" , bounty: 120000000)
//    ]
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
    let viewModel = BountyViewModel()
    
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
//    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
//    let bountyList = [33000000, 50, 44000000, 300000000, 16000000, 80000000, 77000000, 120000000]
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    
        //원래 뷰컨트롤러에 있는 함수인데 우리가 상속받았고 그걸 다시 재정의? 할려고 하닌깐 오버라이드 되었다.
        // 세그웨이 수행직전에 수행되는 준비하는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender!)
//        ⁉️ Swift는 특정하지 않은 타입에 대해 동작하도록 특별한 타입 두가지를 제공합니다.
//            ● Any
//
//            Any는 함수타입을 포함하여 모든 타입의 인스턴스를 나타낼 수 있습니다.
//
//            ● AnyObject
//
//            AnyObject는 모든 클래스 타입의 인스턴스를 나타낼 수 있습니다.
//            출처: https://zeddios.tistory.com/213 [ZeddiOS]
        
        //DetailViewController 에게 데이터를 주기
        //"showDetaill" 세그웨이 가 지칭하고 있는 데스티네이션 세그웨이 가 DetaillViewController 이다
        // 근데
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            // DetailViewController 여기에는 name 과 bounty 가 있다. 그래서 우리는 여기에 정보를 넣어줄려 한다.
            // 그래서 현재 클릭한 번쨰의 셀이 몇번째 인지를 "sender" 를 통해 정보를 보냈다
            if let index = sender as? Int {
                //🧑🏻‍💻 MODEL
                //let bountyInfo = bountyInfoList[index]
                
                // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
                let bountyInfo = viewModel.bountyInfo(at: index)
//                vc?.name = bountyInfo.name
//                vc?.bounty = bountyInfo.bounty
//                vc?.bountyInfo = bountyInfo
                // ⁉️ 우리가 뷰 컨트롤러 사이에서 데이터를 넘겨줄떄 DetailViewController 에서 bountyInfo 직접 들고있는게 아니라? 먼말이야
                // viewModel 한테 있기 때문에
                vc?.viewModel.update(model: bountyInfo)
//                vc?.name = nameList[index]
//                vc?.bounty = bountyList[index]
            }
            //            https://seoyoung612.tistory.com/entry/swift%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8%EA%B8%B0%EB%B3%B8%EB%AC%B8%EB%B2%9508-%EC%9D%B8%EC%8A%A4%ED%84%B4%EC%8A%A4-%EC%83%9D%EC%84%B1%EA%B3%BC-%EC%86%8C%EB%A9%B8
            // 근데 나는 이 as? 하면서 리턴타입값 정해주고 {} 안에 수행문 하는거 이런 문법 잘모르겠단 말이지?
            // -> 타입캐스팅 에 다운캐스팅 부분 !
            //출처: https://zeddios.tistory.com/265 [ZeddiOS]
            
                
            
        }
    }
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    override func viewDidLoad(){//컨트롤러의 뷰가 메모리에로드 된 후 호출
        super.viewDidLoad()
        //이 메서드를 재정의 super하는 경우 슈퍼 클래스도이 메서드를 재정의하는 경우 구현의 특정 지점 에서이 메서드를 호출합니다 .
        
    }
    //UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //🧑🏻‍💻 MODEL
        //return bountyInfoList.count
        // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
        return viewModel.numberOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    guard let cell =
            tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else{
        return UITableViewCell()
        }
//        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
//        cell.imgView.image = img //subclass UITableViewCell 에서 imgView 에 UIImageView 넣어서 사 image 사용 거기에 img 넣기
//        cell.nameLabel.text = nameList[indexPath.row]
//        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        //🧑🏻‍💻 MODEL
        //let bountyInfo = bountyInfoList[indexPath.row]
        
        // 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        //🧑🏻‍💻 VIEW
//        cell.imageView?.image = bountyInfo.image
//        cell.nameLabel.text = bountyInfo.name
//        cell.bountyLabel.text = "\(bountyInfo.bounty)"
        cell.update(info: bountyInfo)
        return cell
    }
    
    //🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧
    
    //UITableViewDelegate 클릭시 수행작업 부분
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexpath\(indexPath.row)")
        
      //모달로 올라가는 뷰 컨트롤러의 아이덴티파이 는 "showDetail"
        
        //세그웨이 연결 할떄 여러개의 세그웨이를 보낼수 있기에
        //구분자 👀"withIdentifier" 에 "withIdentifier" 로 지정
        // 세그웨이 를 수행시 어떤 특정한 오브젝트를 같이 껴서 보낼수 있다. 👀"sender"
        performSegue(withIdentifier: "showDetail" , sender: indexPath.row)
        // sender 에 indexPath.row (cell 에대 한 정보) 를 준다 : ? prepare 작업
    }
}

//🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

class ListCell: UITableViewCell {
    // weak 를 사용하는냐? strong 을 사용하는냐?
    // http://monibu1548.github.io/2018/05/03/iboutlet-strong-weak/
    // @IBOutlet , @IBAction ...?? 이거 모야
    // https://etst.tistory.com/74
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    // ! 는 옵셔널 로 Nil 이 올 일이 없을떄 강제레퍼 하는것?!
    
    //🧑🏻‍💻 VIEW
    func update(info: BountyInfo) {
        imageView?.image = info.image
        nameLabel.text = info.name
        bountyLabel.text = "\(info.bounty)"
    }
}



//🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

// 🧑🏻‍💻 VIEWMODEL : 데이터(MODEL)를 가지고 있어야 한다.
//뷰랑 뷰모델에서는 모델에 직접 엑세스 하지않고 뷰모델을 통해서만 엑세스 한다
class BountyViewModel {
    let bountyInfoList : [BountyInfo] = [
        BountyInfo(name: "brook" , bounty: 33000000),
        BountyInfo(name: "chopper" , bounty: 50),
        BountyInfo(name: "franky" , bounty: 44000000),
        BountyInfo(name: "luffy" , bounty: 300000000),
        BountyInfo(name: "nami" , bounty: 16000000),
        BountyInfo(name: "robin" , bounty: 80000000),
        BountyInfo(name: "sanji" , bounty: 77000000),
        BountyInfo(name: "zoro" , bounty: 120000000)
    ]
    
    var sortedList: [BountyInfo] {
        let sortedList = bountyInfoList.sorted{ prev , next in return prev.bounty > next.bounty}
        return sortedList
    }
    
    //bountyInfoList 갯수 구하기
    var numberOfBountyInfoList : Int {
        return bountyInfoList.count
    } // 이거 도대체 모지 ? 함수 아닌데 ??? 걍 변수인데??
    
    //몇번째의 데이터 인지 구하기
    func bountyInfo(at index: Int) -> BountyInfo {
        return sortedList[index]
    }
}
