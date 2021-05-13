//
//  ResultViewController.swift
//  GachaTech
//
//  Created by Yu Kono on 2021/05/13.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //乱数を作る
        let number = Int.random(in: 0..<10)
        //モンスターの画像を追加する
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!]
        //モンスターのランダム表示
        monsterView.image = monsterArray[number]
        
        //背景画像をモンスターによって変える
        if number == 9{
            haikeiView.image = UIImage (named: "bg_gold.png")
        }else if number >= 6{
            haikeiView.image = UIImage(named: "bg_red.pne")
        }else {
            haikeiView.image = UIImage(named: "bg_blue.pne")
        }
    }
    
    //一番後ろの画像
    @IBOutlet var haikeiView :UIImageView!
    //モンスターを表示する画像
    @IBOutlet var monsterView :UIImageView!
    //モンスター画像を保存する配列
    var monsterArray:[UIImage]!
    //戻るボタン
    @IBAction func returnButton {
        
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
