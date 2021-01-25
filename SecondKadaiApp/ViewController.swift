//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 中川Air利光 on 2021/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    // 1画面目のTextFieldをStoryboardでこのViewControllerにIBOutletとして接続しておく...？
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // segue から遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //遷移先のResultViewControllerで宣言している、nameを渡す
        resultViewController.name = self.name.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        //他の画面から segue を使って戻ってきた時に呼ばれる
    }

}

