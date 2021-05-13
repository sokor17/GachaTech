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
            haikeiView.image = UIImage(named: "bg_red.png")
        }else {
            haikeiView.image = UIImage(named: "bg_blue.png")
        }
        
      
        
    }
    
    //ResultViewが呼び出されるたび発動するメソッド
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        //アニメーションの中でもtransformさせるキーパスを設定
        let animation = CABasicAnimation(keyPath: "transform")
        //アニメーションの開始時の数値
        animation.fromValue=NSNumber(value:0)
        //アニメーション終了時の数値
        animation.toValue=NSNumber(value:2 * Double.pi)
        //z軸を中心としたアニメーションにする
        animation.valueFunction=CAValueFunction(name: CAValueFunctionName.rotateZ)
        //アニメーションの速さを指定する
        animation.duration=5
        //アニメーションの繰り返し
        animation.repeatCount=Float.infinity
        //レイヤーの選択
        haikeiView.layer.add(animation,forKey: nil)
        
        //モンスターにアニメーションをつける
        let animation2 = CABasicAnimation(keyPath: "transform")
        //アニメーションの開始時の数値
        animation2.fromValue=NSNumber(value:0)
        //アニメーション終了時の数値
        animation2.toValue=NSNumber(value:2 * Double.pi)
        //z軸を中心としたアニメーションにする
        animation2.valueFunction=CAValueFunction(name: CAValueFunctionName.rotateZ)
        //アニメーションの速さを指定する
        animation2.duration=2
        //アニメーションの繰り返し
        animation2.repeatCount=Float.infinity
        //レイヤーの選択
        monsterView.layer.add(animation2,forKey: nil)
    
    }
    
    //一番後ろの画像
    @IBOutlet var haikeiView :UIImageView!
    //モンスターを表示する画像
    @IBOutlet var monsterView :UIImageView!
    //モンスター画像を保存する配列
    var monsterArray:[UIImage]!
    //戻るボタン
    @IBAction func backButton() {
        self.dismiss(animated: true, completion: nil)
    }
    //名前のラベル
    @IBOutlet var nameLabel :UILabel!
    //名前を保存する配列
    var nameArray:[UIFont]!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
