import UIKit

class SecViewController: UIViewController {

    @IBOutlet weak var INVALIDTEXT: UILabel!
    @IBOutlet weak var textfld: UITextField!
    @IBOutlet weak var loginbutton: UIButton!
    var samp: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbutton.layer.cornerRadius = 10
        loginbutton.clipsToBounds = true
        textfld.becomeFirstResponder()
        textfld.layer.borderWidth = 0
        textfld.layer.cornerRadius = 10
        textfld.clipsToBounds = true
        INVALIDTEXT.isHidden = true
    }
    
    @IBAction func looginaction(_ sender: Any) {
        if textfld.text == "2005"{
            textfld.layer.borderWidth = 0
            INVALIDTEXT.isHidden = true
            if let h = storyboard?.instantiateViewController(identifier: "thirdview") as? thirdViewController{
                h.dummy = samp ?? "2005"
//                h.modalPresentationStyle = .fullScreen
//                present(h, animated: true)
                navigationController?.pushViewController(h, animated: true)
          
            }
                    }
        else{
            textfld.layer.borderWidth = 1
            textfld.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            INVALIDTEXT.isHidden = false
            textfld.text = ""
        }
    }

    
}
