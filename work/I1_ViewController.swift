//
//  I1_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

import UIKit

class I1_ViewController: UIViewController {

    @IBOutlet weak var I1: UILabel! // ランダムな単語を表示するUILabel

        let words = ["マルゲリータ", "フォカッチャ", "パネトーネ", "マリトッツォ", "グリッシーニ"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            I1.text = randomWord
        }

}
