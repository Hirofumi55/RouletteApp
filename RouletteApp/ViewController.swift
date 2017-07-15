//
//  ViewController.swift
//  RouletteApp
//
//  Created by Sasakura Hirofumi on 2017/07/13.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ルーレット結果を出力するラベル
    @IBOutlet weak var rouletteLabel: UILabel!
    
    //CSVファイルから選択された氏名を格納
    var selectedName : String = "初期値"
    
    //CSVファイルから選択されたRowを格納
    var selectedRow : [String] = ["",""]
    

    //疑問点：CSVファイルを一度配列に格納してから操作した方が良いのか
    //それとも、直接、取り出したいカラムと行を指定して使用した方が良いのか
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad()")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Startボタン押下で呼び出されるメソッド
    @IBAction func tapStartButton(_ sender: Any) {
        
        //0~4の乱数を生成する
        let num = arc4random_uniform(5) + 1
        print(num)
        
        //OperationCSVのインスタンスを生成
        let operationCSV : OperationCSV = OperationCSV()
        
        //CSVファイルのRowを読み込む
        selectedRow = operationCSV.readCSVFile()
        
        
        
        //選択された氏名をラベルに表示する
        selectedName = selectedRow[1]
        rouletteLabel.text = selectedName
        
    }

}

