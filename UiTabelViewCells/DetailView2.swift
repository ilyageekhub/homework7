import UIKit

class DetailView2: UIViewController {

    @IBOutlet weak private var textEdit: UITextField!

    var name: String?

    var handler: ((String?) -> Void)?

    @IBAction private func saveAction(_ sender: Any) {
        if textEdit.text?.isEmpty == false {
            handler?(textEdit.text)
            navigationController?.popToRootViewController(animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textEdit.text = name
    }

    @IBAction private func gotToRoot(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
