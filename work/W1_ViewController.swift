//
//  W1_ViewController.swift
//  work
//
//  Created by 玉城航汰 on 2023/09/28.
//

import UIKit

class W1_ViewController: UIViewController {

    @IBOutlet weak var W1: UILabel! // ランダムな単語を表示するUILabel

        let words = ["りんご", "バナナ", "みかん", "いちご", "ぶどう", "すいか"]

        override func viewDidLoad() {
            super.viewDidLoad()
            // 画面が読み込まれたときにランダムな単語を表示する
            showRandomWord()
        }

        func showRandomWord() {
            let randomIndex = Int(arc4random_uniform(UInt32(words.count)))
            let randomWord = words[randomIndex]
            W1.text = randomWord
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
