import UIKit

class CustomDetailsViewController: UIViewController {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAge: UILabel!
    
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
