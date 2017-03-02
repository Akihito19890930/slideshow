//
//  ViewController.swift
//  slideshow
//
//  Created by 桝田研仁 on 2017/03/01.
//  Copyright © 2017年 桝田研仁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //ImageViewをアウトレット接続
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var saisei: UIButton!
    @IBOutlet weak var susumu: UIButton!
    @IBOutlet weak var modoru: UIButton!
    
    //時間送りのための変数を定義（型はタイマー）
    var timer: Timer!
    
    //画像名の配列を設定
    let animal = ["bear.jpg","cat.jpg","doga.jpg","pig.jpg"]
    //配列番号を指定するためのナンバーを定義
    var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    //試しに画像をUIImageに表示させてみる

    //再生ボタンをアクション接続
    @IBAction func Saisei(_ sender: Any) {
        

        
    }
    
    //進むボタンをアクション接続
    @IBAction func susumu(_ sender: Any) {

        //numに１ずつプラスしていく
        num += 1
        //進むボタンをタップしたとき、画像を出力
        //出力する画像は、以下
        ImageView.image = UIImage(named: animal[num])

        
    }
    
    //戻るボタンをアクション接続
    @IBAction func Modoru(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

