import UIKit

class seventhViewController: UIViewController {

    @IBOutlet weak var invalidtext: UILabel!
    @IBOutlet weak var updatepass: UIButton!
    @IBOutlet weak var textfieldtwo: UITextField!
    @IBOutlet weak var eyesslashtwo: UIButton!
    @IBOutlet weak var eyetwo: UIButton!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var eye: UIButton!
    @IBOutlet weak var eyesslash: UIButton!
    var password: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true

        textfield.layer.cornerRadius = 10
        textfieldtwo.layer.cornerRadius = 10
        textfield.clipsToBounds = true
        textfieldtwo.clipsToBounds = true

        invalidtext.isHidden = true
        textfield.isSecureTextEntry = true
        eye.isHidden = true
        eyesslash.isHidden = false
        textfieldtwo.isSecureTextEntry = true
        eyetwo.isHidden = true
        eyesslashtwo.isHidden = false
   
    }
    
    @IBAction func textfieldaction(_ sender: Any) {
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        textfieldtwo.layer.borderWidth = 0

        if textfield.text == textfieldtwo.text && textfield.text != ""{
            invalidtext.isHidden = true
            textfieldtwo.layer.borderWidth = 0
            textfieldtwo.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        }
    }
    
    @IBAction func textfieldtwoaction(_ sender: Any) {
        textfieldtwo.layer.borderWidth = 1
        textfieldtwo.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        textfield.layer.borderWidth = 0

        if textfield.text == textfieldtwo.text && textfieldtwo.text != "" {
            invalidtext.isHidden = true
            textfield.layer.borderWidth = 0
            textfield.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        }
  }
    
    @IBAction func eyes(_ sender: Any) {
        textfield.isSecureTextEntry = true
        eyesslash.isHidden = false
        eye.isHidden = true
    }
    
    @IBAction func eyeslash(_ sender: Any) {
        textfield.isSecureTextEntry = false
        eye.isHidden = false
        eyesslash.isHidden = true
    }

     @IBAction func eyeslashtwo(_ sender: Any) {
         textfieldtwo.isSecureTextEntry = false
         eyetwo.isHidden = false
         eyesslashtwo.isHidden = true
     }

    @IBAction func eyetwo(_ sender: Any) {
        textfieldtwo.isSecureTextEntry = true
        eyesslashtwo.isHidden = false
        eyetwo.isHidden = true
    }
    
    @IBAction func updatepassaction(_ sender: Any) {
        if textfield.text == textfieldtwo.text && textfield.text != "" && textfieldtwo.text != "" {
            
            print(textfield.text ?? "")
            password = textfield.text ?? ""
            textfield.layer.borderWidth = 0
            textfieldtwo.layer.borderWidth = 0
            textfield.isSecureTextEntry = true
            textfieldtwo.isSecureTextEntry = true
            eyesslashtwo.isHidden = false
            eyesslash.isHidden = false
            eye.isHidden = true
            eyetwo.isHidden = true
            
            invalidtext.isHidden = true
            
            
            
            if let v = storyboard?.instantiateViewController(identifier: "lastview") as? lastViewController{
                v.sample = textfield.text ?? ""
//                v.modalPresentationStyle = .fullScreen
//                present(v, animated: true)
                navigationController?.pushViewController(v, animated: true)
            }
            
        }
        
        else if textfield.text != textfieldtwo.text{
            invalidtext.isHidden = false
            textfield.layer.borderWidth = 1
            textfieldtwo.layer.borderWidth = 1
            textfieldtwo.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            textfield.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
        }

    }
    
}
