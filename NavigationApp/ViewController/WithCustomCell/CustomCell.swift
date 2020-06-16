import UIKit

// Default - protocol is value type
// How change this?
// Need add ": AnyObject"
// and now we can use weak for refences type
// like this: weak var delegate
protocol CustomCellDelegate: AnyObject {
    func didPressButtonClickMeAction(cell: UITableViewCell)
}

class CustomCell: UITableViewCell, BaseCell {
    
    @IBOutlet weak var labelName: UILabel!
    
    weak var delegate: CustomCellDelegate?
    
    static func cellNib() -> UINib? {
        // Cell Class Name == Cell Xib Name
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static func cellIdentifier() -> String {
        return String(describing: self)
    }
    
    func config(user: UserModel, delegate: CustomCellDelegate) {
        self.delegate = delegate
        labelName.text = user.name
    }
    
    @IBAction func actionClickButtonClickMe(_ sender: UIButton) {
        self.delegate?.didPressButtonClickMeAction(cell: self)
    }
}
