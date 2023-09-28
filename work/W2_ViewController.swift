//
//  W2_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class W2_ViewController: UIViewController {

    @IBOutlet weak var W2: UILabel! // ランダムな単語を表示するUILabel

        let words = ["カツカレー","カツ丼","焼肉","お好み焼き","ラーメン","焼きそば"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            W2.text = randomWord
        }

}
