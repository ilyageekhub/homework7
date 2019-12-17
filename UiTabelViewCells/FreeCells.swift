import UIKit

class FreeCells: UITableViewCell {

    @IBOutlet weak private var title: UILabel!
    var titleText: String {
        set {
            title.text = newValue
        }
        get {
            return title.text ?? ""
        }
    }
    var onButtonHandler: (() -> Void)?

    @IBAction private func actionButton(_ sender: Any) {
        onButtonHandler?()
    }
}
