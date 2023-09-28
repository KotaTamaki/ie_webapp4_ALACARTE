//
//  C1_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class C1_ViewController: UIViewController {

    
    @IBOutlet weak var C1: UILabel! // ランダムな単語を表示するUILabel

        let words = ["麻婆豆腐","五目焼きそば","坦々麺","黒麻婆麺","回鍋肉"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            C1.text = randomWord
            
        
        }
    
    

}
