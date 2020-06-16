import UIKit

class BlockViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    private var firstPartOfPhrase: (() -> String)!
    
    // (String) -> ()
    // (String) -> Void
    private var secondBlock: ((String) -> Void)?
    
    private var calculate: ((_ first: Int, _ second: Int) -> Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Init Blocks
        firstPartOfPhrase = {
            return "Hello_"
        }
        
        calculate = { first, second in
            return first + second
        }
        
        // Use Blocks
        // blockSimple3(with: "User")
        // blockSimple5()
        
        blockSimple4()
        
        secondBlock?("Hello Second Block")
        
        blockSimple6(name: "Some_User_Name", callback: { name in
            print("Callback: \(name)")
        })
        
        blockSimple7(name: "Some_User_Name") { name in
            print("Callback: \(name)")
        }
    }
    
    func someFunc(){
        // Some computing
    }
    
    // 1
    func blockSimple1(with name: String) {
        
        let userName = name
    
        func getPhrase() -> String {
          return "Hello, " + userName
        }
        
        //userNameLabel.text = getPhrase()
    }
    
    // 2
    func blockSimple2(with name: String) {
    
        let emptyBlock = {
            print(name)
        }
        emptyBlock()
        
        let getPhrase: () -> String = {
            return "Hello, " + name
        }
        userNameLabel.text = getPhrase()
    }
    
    // 3
    func blockSimple3(with name: String) {
        userNameLabel.text = firstPartOfPhrase() + name
    }
    
    // 4
    func blockSimple4() {
        secondBlock = { [weak self] someStringValue in
            self?.userNameLabel.text = someStringValue
        }
    }
    
    // 5
    func blockSimple5() {
        guard let calculateResult = calculate?(10, 20) else { return }
        userNameLabel.text = String(calculateResult)
    }
    
    // 6
    func blockSimple6(name: String, callback:(_ name: String) -> Void) {
        // Some operations
        callback(name)
    }
    
    // 7
    func blockSimple7(name: String, _ callback:(_ name: String) -> Void) {
        // Some operations
        callback(name)
    }
    
    func blockSimple8(){
        
    }
}
