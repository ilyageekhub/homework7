import UIKit

class StudentsCell: UITableViewCell {

    @IBOutlet weak private var title: UILabel!
    var titleText: String {
        set {
            title.text = newValue
        }
        get {
            return title.text ?? ""
        }
    }
}
