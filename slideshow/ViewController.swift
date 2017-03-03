//
//  ViewController.swift
//  slideshow
//
//  Created by 桝田研仁 on 2017/03/01.
//  Copyright © 2017年 桝田研仁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     変数名をつける規則として、
     一目でそいつが何を格納する変数(インスタンス)なのかわかるようにつけるといいです。
     あとはプロジェクトによって規則があったり、言語に則ったルールを用いたりします。
     
     swiftコード規則: http://qiita.com/susieyy/items/f71435cc962e70d81b37
     変数の付け方いろいろ: http://qiita.com/sasaron397/items/334fd6a404538465f22c
     
     こちらはPHPなので参考にはならないですが、ケースとしてはそんな感じであります。
     
     swiftに関して、変数、メソッド、列挙体(こちらはswift3.0から)などはキャメルケース
     クラスなどはパスカルケースですね。
     */
    //ImageViewをアウトレット接続
    @IBOutlet weak var ImageView: UIImageView!  // -> imageView
    @IBOutlet weak var saisei: UIButton!        // -> playbackAndStopButton <-長いので他に案があればw
    @IBOutlet weak var susumu: UIButton!        // -> nextButton
    @IBOutlet weak var modoru: UIButton!        // -> previousButton <- previousはprevと略すことも多いです
    
    //再生ボタンタップしたとき時間送りのための変数を定義（型はタイマー）
    var timer: Timer! // こちらはこのままでもいいでしょう
    
    //画像名の配列を設定
    let animal = ["bear.jpg","cat.jpg","doga.jpg","pig.jpg"] // 配列はよく複数形として表現されたり、末尾に ~Arr、~Array, ~List, ~sとつけることが多いです。 -> animalImgNames
    
    //配列番号を指定するためのナンバーを定義
    var num: Int = 0
    
    //画像の最大枚数を定義
    /*
     こちらは配列のカウントでもいいですね。
     つまりはanimal.count で配列に格納されている個数を取得できます。
     というのもこうしてしまうともしアプリのアプデなどで画像が増えた場合こちらも修正する必要があるからです。
     */
    var maxanimal: Int = 4 // これは「画像の最大数」なので animalsCount animalMaxとかがいいでしょう
    
    //画像の最低枚数を定義
    var minanimal: Int = 0 // これは「画像の最大数」なので animalMin とかがいいでしょう
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //起動時に画像を表示させておくんです
        ImageView.image = UIImage(named: animal[0])
        
    }
    
    //試しに画像をUIImageに表示させてみる
    
    //再生ボタンをアクション接続
    /*
     アクションは動きの表現なので
     最初に on~ とつけたり ~Action とつけるとわかりやすいです
     */
    
    @IBAction func Saisei(_ sender: Any) {
        
    }
    
    //進むボタンをアクション接続
    @IBAction func Susumu(_ sender: Any) {
        //もし、numがmaxanimalから1を引いた数よりちっこかったら
        if num < maxanimal-1{
            //numに１ずつ足していく
            num += 1
            //画像を表示する
            ImageView.image = UIImage(named: animal[num])
            
        }
    }
    
    //戻るボタンをアクション接続
    @IBAction func Modoru(_ sender: Any) {
        
        /**
         こちらnumが[最低数より引かれた場合]の考慮をよろしくお願い致します。
         */
        
        //numに１ずつマイナスしていく
        num -= 1
        //進むボタンをタップしたとき、画像を出力
        //出力する画像は、以下
        ImageView.image = UIImage(named: animal[num])
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

