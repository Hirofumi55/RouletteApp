//
//  ViewController.swift
//  RouletteApp
//
//  Created by Sasakura Hirofumi on 2017/07/13.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
    //ルーレット結果を出力するラベル
    @IBOutlet weak var rouletteLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //デフォルトRealmを取得する
        //Realmの取得はスレッドごとに必要になる
        let realm = try! Realm()
        
        //Realmに保存されているすべてのオブジェクトを削除する
        //try! realm.write {
        //    realm.deleteAll()
        //}
        
        
        //Humanクラスのオブジェクトを作成し、プロパティに値をセット
        let Hirofumi = Human()
        Hirofumi.id = "0"
        Hirofumi.name = "Hirofumi"
        
        let Doshow = Human()
        Doshow.id = "1"
        Doshow.name = "Doshow"
        
        let Show = Human()
        Show.id = "2"
        Show.name = "Show"
        
        let Kasahara = Human()
        Kasahara.id = "3"
        Kasahara.name = "Kasahara"
        
        
        //トランザクションを開始して、オブジェクトをRealmに追加する
        try! realm.write {
            realm.add(Hirofumi)
            realm.add(Doshow)
            realm.add(Show)
            realm.add(Kasahara)
            print("Realm Add")
        }
        
        print("viewDidLoad")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Startボタン押下で呼び出されるメソッド
    @IBAction func tapStartButton(_ sender: Any) {
        
        //デフォルトRealmを取得する
        //Realmの取得はスレッドごとに必要になる
        let realm = try! Realm()
        print("Realm取得")
        
        
        //0~4の乱数を生成する
        let num = Int(arc4random_uniform(5))
        
        //Realmからデータを取得する
        let result = realm.objects(Human.self)
        print("Realmから該当するデータを取得")
        
        //Realmの中身をログに出力
        print(result)
        print(result[0])
        print(result[0].id)
        print(result[0].id)
        print(result.count)
            
            //選択された氏名をラベルに表示する
            rouletteLabel.text = result[num].name
        
        
    }
    
}

