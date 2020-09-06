//
//  FavouriteViewController.swift
//  HealthO
//
//  Created by kashee kushwaha on 17/05/20.
//  Copyright © 2020 kashee kushwaha. All rights reserved.
//

import UIKit

class FavouriteViewController: UIViewController {

    @IBOutlet weak var favTbl: UITableView!
    var isCritical = false

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    favTbl.separatorStyle = .none

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FavouriteViewController: UITableViewDelegate, UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell =  tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeCell
        cell?.xrayLbl.isHidden = true
       cell?.criticalLbl.isHidden = true
       if indexPath.row == 0 {
           cell?.xrayLbl.isHidden = false
           cell?.criticalLbl.isHidden = false

           cell?.rectangleView.backgroundColor = #colorLiteral(red: 0.9803921569, green: 0.937254902, blue: 0.9529411765, alpha: 1)
       }
       return cell!
   }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("yes")
        setupCustomV()
    }
   func setupCustomV() {
       guard let popupV = self.storyboard?.instantiateViewController(identifier: "ModelPopUpViewController") as? ModelPopUpViewController else { return  }
       popupV.modalPresentationStyle = .overCurrentContext

              popupV.modalTransitionStyle = .crossDissolve
               self.present(popupV, animated: true, completion: nil)
   }
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 186
   }
   
}
