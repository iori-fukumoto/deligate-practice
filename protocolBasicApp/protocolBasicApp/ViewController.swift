//
//  ViewController.swift
//  protocolBasicApp
//
//  Created by 福本伊織 on 2021/02/07.
//

import UIKit

//④Bクラスで設定したプロトコルを宣言
class ViewController: UIViewController,CatchProtocol {
    
    @IBOutlet weak var label: UILabel!
    
    //var count = 0 でもOK
    var count = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    
    func catchDate(count: Int) {
        label.text = String(count)
    }
    
    @IBAction func next(_ sender: Any) {
        
        
        performSegue(withIdentifier: "next", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as!NextViewController
        
        //⑤BクラスでからAクラスへ委任を受ける。（ネクストVCで設定したデリゲートをAクラスでも使えるようにしますよーという意味）
        nextVC.delegate = self
        
    }
    
}

