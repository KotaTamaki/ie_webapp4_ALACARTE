//
//  C3_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class C3_ViewController: UIViewController {

    @IBOutlet weak var C3: UILabel! // ランダムな単語を表示するUILabel

        let words = ["りんご", "バナナ", "みかん", "いちご", "ぶどう", "すいか"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            C3.text = randomWord
        }

}
