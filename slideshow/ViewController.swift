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
    
    //画像名の配列を設定
    let animal = ["bear.jpg","cat.jpg","doga.jpg","pig.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        //UIImageのインスタンスを生成。
        //namedが作るときに渡してあげる情報。
        //UIImageViewで定義されている、imageというプロパティ
        ImageView.image = UIImage(named: animal[0])

        
    }

    //試しに画像をUIImageに表示させてみる

    //再生ボタンをアクション接続
    @IBAction func Saisei(_ sender: Any) {
    
        
    }
    
    //進むボタンをアクション接続
    @IBAction func Susumu(_ sender: Any) {
    }
    
    //戻るボタンをアクション接続
    @IBAction func Modoru(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

