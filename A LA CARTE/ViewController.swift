import UIKit

class ViewController: UIViewController {

    //1個目、動物のUIPickerViewの選択内容を表示するUILabel
    @IBOutlet weak var animalLabel: UILabel!

    // 1個目、動物のUIPickerView
    @IBOutlet weak var animalPickerView: UIPickerView!

    // 2個目、フルーツのUILabel
    @IBOutlet weak var fruitLabel: UILabel!

    // 2個目、フルーツのUIPickerView
    @IBOutlet weak var fruitPickerView: UIPickerView!

    // 1個目、動物のUIPickerViewに表示する値の配列
    var animalValue = ["犬", "猫", "兎", "狐"]

    // 2個目、フルーツのUIPickerViewに表示する値の配列
    var fruitValue = ["リンゴ", "オレンジ", "ブドウ", "バナナ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        animalPickerView.dataSource = self
        animalPickerView.delegate = self
        fruitPickerView.dataSource = self
        fruitPickerView.delegate = self
        animalPickerView.tag = 1
        fruitPickerView.tag = 1

    }
}

// UIPickerViewに表示設定
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    // UIPickerViewの行数（要素の数）
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView === animalPickerView {
            return animalValue.count
        } else if pickerView === fruitPickerView {
            return fruitValue.count
        } else {
            return animalValue.count
        }
    }

    // UIPickerViewに表示する配列（内容）
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView === animalPickerView {
            return animalValue[row]
        } else if pickerView === fruitPickerView {
            return fruitValue[row]
        } else {
            return animalValue[row]
        }
    }

    // UIPickerViewが選択された時の挙動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView === animalPickerView {
            animalLabel.text = animalValue[row]
        } else if pickerView === fruitPickerView {
            fruitLabel.text = fruitValue[row]
        } else {
            animalLabel.text = animalValue[row]
        }
    }
}
