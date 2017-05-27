//
//  File.swift
//  taskpp
//
//  Created by 松本大佑 on 2017/05/27.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import RealmSwift

class Task: Object {
  //管理用 ID。プライマリーキー
  dynamic var id = 0
  
  //タイトル
  dynamic var title = ""
  
  //内容
  dynamic var contents = ""
  
  //日時
  dynamic var date = NSDate()
  
  /*
   idをプライマリーキーとして設定
  */
  override static func primaryKey() -> String? {
    return "id"
  }
}
