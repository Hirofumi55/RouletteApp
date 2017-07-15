//
//  OperationCSV.swift
//  RouletteApp
//
//  Created by Sasakura Hirofumi on 2017/07/15.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

import Foundation

//CSVファイルの読み込み、書き込みクラス
class OperationCSV {
    
    //ファイル名
    private let CSVFile : String = "Roulette"
    
    //イニシャライザ
    init(){
        //特に処理なし
    }
    
    
    //CSVファイルから指定されたレコードを返す
    func readCSVFile() -> [String] {
        var CSVRow: [String]
        
        //初期値として戻り値に値を格納しておく
        CSVRow = ["0", "名無しさん"]
        
        
        //ここに処理を記載する
        
        
        return CSVRow
    }
    
}
