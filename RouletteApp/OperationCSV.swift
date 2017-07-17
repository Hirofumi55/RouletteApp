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
        
        //ここからCSV読み出し処理
        //CSVファイルのパスを取得する。
        do {
            let csvPath = Bundle.main.path(forResource: "mondai", ofType: "csv")
            
            //CSVファイルのデータを取得する。
            let csvData = try String(contentsOfFile:csvPath!, encoding:String.Encoding.utf8)
            
            //改行区切りでデータを分割して配列に格納する。
            var dataList = csvData.componentsSeparatedByString("\n")
            for var i = 0; i < 6; i += 1 {
                
                //カンマ区切りの1行を["aaa", "bbb", ... , "zzz"]形式に変換して代入する
                let parts = dataList[i].componentsSeparatedByString(",")
                problemArray.addObject(parts)
                
            }
            var mondai : NSArray = problemArray[counter] as! NSArray
            
            
        }catch _ as NSError{
            print("error")
        }
        
        
        return CSVRow
    }
    
}
