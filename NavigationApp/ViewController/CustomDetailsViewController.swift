import UIKit

class CustomDetailsViewController: UIViewController {
    
    @IBOutlet private weak var userName: UILabel!
    @IBOutlet private weak var userAge: UILabel!
    
    var user: UserModel!
    
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
}
