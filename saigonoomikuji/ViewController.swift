//
//  ViewController.swift
//  saigonoomikuji
//
//  Created by 米田大弥 on 2018/05/26.
//  Copyright © 2018年 hiroya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var btnUranai: UIButton!
    
    @IBOutlet weak var myimageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnTap(_ sender: UIButton) {
        
        //占いの結果を配列で用意する
        var omikuji = ["大吉","吉","中吉","凶",]
        
        //占いのどれか一つをランダムに選ぶ
        let r = Int(arc4random()) % omikuji.count
        
        //アラートをつくる
        let alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        //OKボタン追加
        //handler に自作関数を設置
        //設置した自作関数の中で、画像の切り替え表示処理を行う
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler:{action in self.kekka()}))
        
        //アラートを表示
        present(alertController, animated: true, completion: nil)
    }
    
    
    //引数を活用することで処理が可能！
    func kekka(){
        /*myimageView.image = UIImage(named: "sample.jpg")
        myimageView.image = UIImage(named: "sample2.jpg")
        myimageView.image = UIImage(named: "sample3.jpg")
        myimageView.image = UIImage(named: "sample4.jpg")*/
        }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

