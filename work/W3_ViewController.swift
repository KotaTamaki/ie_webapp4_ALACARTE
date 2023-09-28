//
//  W3_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class W3_ViewController: UIViewController {

    @IBOutlet weak var W3: UILabel! // ランダムな単語を表示するUILabel

        let words = ["蒸し餃子","春巻き","青菜炒め","酢豚","エビチリ"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            W3.text = randomWord
        }

}
