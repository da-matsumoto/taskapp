//
//  InputViewController.swift
//  taskpp
//
//  Created by 松本大佑 on 2017/05/27.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
  
  @IBOutlet weak var titleTextField: UITextField!
  
  @IBOutlet weak var contentsTextField: UITextView!
  
  @IBOutlet weak var datePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
