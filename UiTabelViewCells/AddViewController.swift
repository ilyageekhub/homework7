import UIKit

class AddViewController: UIViewController {

    let typesOfStudents = ["Students", "Free", "Off"]

    var type: Int = 0

    var addStudent: ((String?, Int) -> Void)?

    @IBOutlet weak private var labelName: UITextField!

    @IBOutlet weak private var pickerView: UIPickerView!

    @IBAction private func addCell(_ sender: Any) {
        if type < 0 && labelName.text?.isEmpty == true {
            return
        }
        dismiss(animated: true) {
            self.addStudent?(self.labelName.text, self.type)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    @IBAction private func goToroodt(_ sender: UIButton) {
        dismiss(animated: true) {
        }
    }
}
extension AddViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return typesOfStudents.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return typesOfStudents [row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        type = row
    }
}
