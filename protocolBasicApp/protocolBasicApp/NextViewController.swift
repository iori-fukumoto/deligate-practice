//
//  NextViewController.swift
//  protocolBasicApp
//
//  Created by 福本伊織 on 2021/02/07.
//

import UIKit

//①プロトコル(仕様書)を作成
protocol CatchProtocol {
    //このプロトコルの規則を決める
    func catchDate(count:Int)
    
}

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count:Int  = 0
    
    //②宣言をする
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: Any) {
        
        //値が入っているかわからない場合、？をつける。
        //③デリゲートメソッドを任せたクラス（Bクラス）で発動させる。ここで上で設定した変数のcountを渡してあげる。
        delegate?.catchDate(count: count)
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func plusAction(_ sender: Any) {
        
        count = count + 1
        label.text = String(count)
        
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
