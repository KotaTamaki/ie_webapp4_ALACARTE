//
//  F4_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class F4_ViewController: UIViewController {

    @IBOutlet weak var F4: UILabel! // ランダムな単語を表示するUILabel

        let words = ["カスレ", "キッシュ", "ブッフ・ブルギニョン", "コック・オ・ヴァン", "クレーム・ブリュレ "]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            F4.text = randomWord
        }

}
