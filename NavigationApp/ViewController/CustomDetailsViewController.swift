import UIKit

class CustomDetailsViewController: UIViewController {
    
    @IBOutlet private weak var userName: UILabel!
    @IBOutlet private weak var userAge: UILabel!
    
    var user: UserModel!
    weak var delegate: CustomViewControllerWithCustomCellDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUi()
    }
    
    private func initUi(){
        // Name
        userName.text = user.name
        userName.sizeToFit()

        // Age
        userAge.text = String(user.age)
        userAge.sizeToFit()
    }
    
    @IBAction func actionClickButtonSendBackData(_ sender: UIButton) {
        delegate?.sendSomeData(someText: "Text from CustomDetailsViewController")
    }
}
