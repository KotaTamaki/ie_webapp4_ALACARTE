import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var foodPickerView: UIPickerView! // 食べ物のPickerView
    @IBOutlet var drinkPickerView: UIPickerView! // 飲み物のPickerView
    
    // 飲み物のデータの配列
    var drinkArray: [String] = [
        "爽健美茶",
        "麦茶",
        "コーラ",
        "オレンジジュース",
        "天然水"
    ]
    
    // 食べ物のデータの配列
    var foodArray: [String] = [
        "ラーメン",
        "トマト",
        "生ハム",
        "きゅうり",
        "納豆",
        "お米"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodPickerView.tag = 1
        drinkPickerView.tag = 2
        // データソースの設定
        drinkPickerView.dataSource = self
        foodPickerView.dataSource = self
        
        // デリゲートの設定
        drinkPickerView.delegate = self
        foodPickerView.delegate = self
    }

    // PickerView一つあたりのの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // PickerView一つあたりの行の数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == foodPickerView {
            return foodArray.count
        }
        
        if pickerView == drinkPickerView {
            return drinkArray.count
        }
        
        return 0
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == foodPickerView {
            return foodArray[row]
        }
        if pickerView == drinkPickerView {
            return drinkArray[row]
        }
        return nil
    }

}
