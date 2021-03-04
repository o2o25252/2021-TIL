//
//  BountyViewController.swift
//  BountyList
//
//  Created by 임희찬 on 2021/03/04.
//

import UIKit

class BountyViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    let nameList = ["brook","chopper","franky","luffy","nami","robin","sanji","zoro"]
    let bountyList = [100,200,300,400,500,3000,120,1900]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //세그웨이 하기 직전에 DetailViewController -> 데이터 주기
        //showDetail  세그웨이 수행시에
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int{
                vc?.name = nameList[index]
                vc?.bounty = bountyList[index]
            }
            
          
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //UITableViewDataSource
    //몇개니?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountyList.count
    }
    //어떻게 표현할꺼니?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imagView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        
        return cell
    }
    // 클릭시 어떻게 할거야?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row) 째")
        //수행 해라
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
        //  sender 에다가 셀에대한 정보를 준다.
    }
    
  
}
//커스텀 셀 제작 //?  ! 차이????
class ListCell : UITableViewCell {
    @IBOutlet  weak var imagView : UIImageView!
    @IBOutlet  weak var nameLabel : UILabel!
    @IBOutlet  weak var bountyLabel : UILabel!
    
}
