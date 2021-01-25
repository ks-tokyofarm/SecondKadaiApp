//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 中川Air利光 on 2021/01/25.
//

import UIKit

class ResultViewController: UIViewController {

    // 2画面目のlabelをStoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!

    // 受け取る為のプロパティ（変数）を宣言しておく
    var name:String = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 上記では name を ""と宣言していたが
        // 1画面目のViewControllerから遷移するときにPrepareForSegueで
        // nameの値を新たに代入されたので、入力された内容が入っている
        label.text = "こんにちは、\(name)さん"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
