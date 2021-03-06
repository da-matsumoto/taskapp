//
//  InputViewController.swift
//  taskpp
//
//  Created by 松本大佑 on 2017/05/27.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import UIKit
import RealmSwift

class InputViewController: UIViewController {
  
  @IBOutlet weak var titleTextField: UITextField!
  
  @IBOutlet weak var contentsTextField: UITextView!
  
  @IBOutlet weak var datePicker: UIDatePicker!
  
  var task: Task!
  let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        //背景をタップしたらdismisskeyboardメソッドを呼ぶように設定する
      let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
      self.view.addGestureRecognizer(tapGesture)
      
      titleTextField.text = task.title
      contentsTextField.text = task.contents
      datePicker.date = task.date as Date
    }
  
    func dismissKeyboard(){
      //キーボードを閉じる
      view.endEditing(true)
    }
  
  override func viewWillDisappear(_ animated: Bool) {
    try! realm.write {
      self.task.title = self.titleTextField.text!
      self.task.contents = self.contentsTextField.text
      self.task.date = self.datePicker.date as NSDate
      self.realm.add(self.task, update: true)
    }
    
    super.viewWillDisappear(animated)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
