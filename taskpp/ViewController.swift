//
//  ViewController.swift
//  taskpp
//
//  Created by 松本大佑 on 2017/05/27.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    tableView.delegate = self
    tableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //Mark: UITableViewDataSourceプロトコルのメソッド
  //各セルを選択した時に実行されるメソッド
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "cellSegue", sender: nill)s
  }
  
  //セルが削除が可能なことを伝えるメソッド
  func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
    return UITableViewCellEditingStyle.delete
  }
  
  //Delete ボタンが押された時に呼ばれるメソッド
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
  }


}

