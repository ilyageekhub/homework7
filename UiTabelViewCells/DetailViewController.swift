import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak private var labelName: UILabel!

    var name: String? {
        didSet {
            labelName?.text = name
        }
    }
    var index: IndexPath?

    var handler: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = name
    }

    @IBAction private func actionEdit(_ sender: Any) {
        performSegue(withIdentifier: "Edit", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Edit", let controller = segue.destination as? DetailView2 {
            controller.name = name
            controller.handler = { name in
                self.name = name
                self.handler?(name)
            }
        }
    }
}
