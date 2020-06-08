import UIKit

class CustomViewControllerWithCustomCell: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var userList: [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fill userList
        for i in 1...100 {
            self.userList.append(UserModel(name: "User_\(i)", age: 10 + i))
        }
        
        // Init TableView
        tableView.delegate = self
        tableView.dataSource = self
        
        // 1. Create/Register Nib - use extension
        // CustomCell.self.baseCellNib()
        // CustomCell.self.baceCellIdentifier()
        // .Self -> .Type
        tableView.registerCustomCell(baseCell: CustomCell.self)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 2. Create custom cell
        let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomCell.cellIdentifier(),
            for: indexPath) as! CustomCell
        
        // 3. Config custom cell
        cell.config(user: userList[indexPath.row])
        
        return cell
    }
    
    // Selected table item & perform segue
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Current User
        let user = userList[indexPath.row]
        
        // Deselected item
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Perform segue
        performSegue(withIdentifier: "customDetailsIdentifier", sender: user)
    }
    
    // Navigation to Next Screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Navigate to CustomDetailsScreen
        if segue.identifier == "customDetailsIdentifier",
            let userModel = sender as? UserModel {
            
            // Find viewController
            let customDetailViewController = segue.destination as! CustomDetailsViewController
            customDetailViewController.user = userModel
        }
    }
}
