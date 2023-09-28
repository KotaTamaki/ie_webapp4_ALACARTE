//
//  F3_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class F3_ViewController: UIViewController {

    @IBOutlet weak var F3: UILabel! // ランダムな単語を表示するUILabel

        let words = ["サラダ・オ・フロマージュ", "ラクレット", "タルティフレット", "クロック・ムネ", "フロマージュ・フリット"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            F3.text = randomWord
        }

}
