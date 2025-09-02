import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var proceed: UIButton!
    @IBOutlet weak var forgotpassword: UIButton!
    @IBOutlet weak var INVALIDTEXT: UILabel!
    @IBOutlet weak var eyesslash: UIButton!
    @IBOutlet weak var eye: UIButton!
    @IBOutlet weak var textfield: UITextField!
    var dummy: String = "2005"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        proceed.layer.cornerRadius = 10
        proceed.clipsToBounds = true
        textfield.layer.borderWidth = 0
        textfield.layer.cornerRadius = 10
        textfield.clipsToBounds = true
        INVALIDTEXT.isHidden = true
        textfield.isSecureTextEntry = true
        eyesslash.isHidden = false
        eye.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func eyes(_ sender: Any) {
        textfield.isSecureTextEntry = true
        eyesslash.isHidden = false
        eye.isHidden = true
    }
    
    @IBAction func proceedbutton(_ sender: Any) {
        if  textfield.text == dummy{
            textfield.layer.borderWidth = 0
            INVALIDTEXT.isHidden = true
            eyesslash.isHidden = false
            eye.isHidden = true
            textfield.isSecureTextEntry = true
            
            if let homeVC = storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController {
                self.navigationController?.setViewControllers([homeVC], animated: true)
            }
        }
        else{
            textfield.layer.borderWidth = 1
            INVALIDTEXT.isHidden = false
            textfield.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            textfield.text = ""
        }
    }
    
    @IBAction func backbutton(_ sender: Any) {
//        dismiss(animated: true)
        navigationController?.popViewController(animated: true)
    }
    @IBAction func eyeslash(_ sender: Any) {
        textfield.isSecureTextEntry = false
        eye.isHidden = false
        eyesslash.isHidden = true
    }

    @IBAction func forgotpasswordaction(_ sender: Any) {
        if let v = storyboard?.instantiateViewController(identifier: "fourthview") as? fourthViewController{
            print("Navigation Controller:", navigationController as Any)
//            v.modalPresentationStyle = .fullScreen
//            present(v, animated: true)
            navigationController?.pushViewController(v, animated: true)
        }
    }
    
}
