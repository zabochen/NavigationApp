import UIKit

class MainViewController: UIViewController {

    override func loadView() {
        super.loadView()
        
        // let myView = UIView()
        // myView.backgroundColor = UIColor.green
        // view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
 
    deinit {
        // last destroy
    }
    
    // MARK: - Actions
    
    /// Click Button
    @IBAction func actionClickButtonConstraintScreen(_ sender: UIButton) {
        performSegue(withIdentifier: Constant.Segue.constraintViewControllerId, sender: nil)
    }
    
    
    // MARK: - Comments
    
    /// Hello comment
    /// - Parameter param1: some param1
    /// - Parameter user: some user
    private func helloComments(param1: Int, for user: String) -> String {
        return "Hello user"
    }
}
