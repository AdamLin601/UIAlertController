//
//  ViewController.swift
//  UIAlertController
//
//  Created by 林奕德 on 2018/3/21.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showAlert(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "Hello", message: "How are you", preferredStyle: .actionSheet)
        let okAction =   UIAlertAction(title: "Ok", style:.default)
        //{ (action:UIAlertAction) in
          //  self.dismiss(animated: true, completion: nil)} 已知型別 可省略
        let helloAction =  UIAlertAction(title: "Say Hello", style:.destructive)
            { (action:UIAlertAction) in
                print("hello")
            self.dismiss(animated: true, completion: nil) //關閉警告控制器
        }
        let cancelAction =   UIAlertAction(title: "Cancel", style:.cancel) { (action:UIAlertAction) in
              print("Cancel")
            self.dismiss(animated: true, completion: nil)
          
        }
        myAlert.addAction(okAction)//增加按鈕
        myAlert.addAction(helloAction)
        myAlert.addAction(cancelAction)
        present(myAlert, animated:true , completion: nil)

        //present（呈現） animated(動畫效果)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

