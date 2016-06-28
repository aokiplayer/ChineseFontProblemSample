import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainBundle = NSBundle.mainBundle()
        
        let labelFilePath = mainBundle.pathForResource("labelText", ofType: "txt")!
        let textViewFilePath = mainBundle.pathForResource("textViewText", ofType: "txt")!
        let buttonFilePath = mainBundle.pathForResource("buttonText", ofType: "txt")!
        
        let buttonText = try! String(contentsOfFile: buttonFilePath, encoding: NSUTF8StringEncoding)
        
        label.text = try! String(contentsOfFile: labelFilePath, encoding: NSUTF8StringEncoding)
        textView.text = try! String(contentsOfFile: textViewFilePath, encoding: NSUTF8StringEncoding)
        button.setTitle(buttonText, forState: .Normal)
    }
}
