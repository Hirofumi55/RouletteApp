//
//  OperationCSV.swift
//  RouletteApp
//
//  Created by Sasakura Hirofumi on 2017/07/15.
//  Copyright © 2017年 Sasakura Hirofumi. All rights reserved.
//

//RealmSwiftをインポートする
import Foundation
import RealmSwift



//モデルの宣言
//下記のように普通のSwiftクラスのように宣言することができます
//またこのモデルオブジェクトは、他のオブジェクトと同様に機能するので一般的なクラスと同様に
//メソッドやプロトコルを追加できる
//Realmはアプリケーション起動時に、定義された全てのモデルクラスを解析している
class Human: Object {
    
    //プロパティの宣言
    //プライマリーキー
    dynamic var id = "0"
    
    //氏名
    dynamic var name = "名無しさん"
    
    
}
