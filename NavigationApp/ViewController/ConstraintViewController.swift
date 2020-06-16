import UIKit

class ConstraintViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Init TextField
        initTextField()
    }
 
    
    // MARK: - TextField: Init & UITextFieldDelegate -
    
    /// Init TextField
    private func initTextField(){
        firstTextField.isSecureTextEntry = true
        firstTextField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Delegation: textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Delegation: textFieldDidEndEditing")
    }
}
