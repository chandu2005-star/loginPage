import UIKit
    
class sixthViewController: UIViewController,UITextFieldDelegate {
    
    
    
    
    
    @IBOutlet weak var INVALIDTEXT: UILabel!
    @IBOutlet weak var verifyotp: UIButton!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var textfour: UITextField!
    @IBOutlet weak var textthree: UITextField!
    @IBOutlet weak var texttwp: UITextField!
    @IBOutlet weak var textone: UITextField!
    var dummy: String?
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true

        
        verifyotp.isEnabled = false
        
        INVALIDTEXT.isHidden = true
        
        
        number.text = ("+91 " + (dummy ?? ""))
        textone.layer.cornerRadius = 16
        texttwp.layer.cornerRadius = 16
        textthree.layer.cornerRadius = 16
        textfour.layer.cornerRadius = 16
        
        
        self.textone.becomeFirstResponder()
    }
    
    
    
    
    
    
    
    
    @IBAction func textoneaction(_ sender: Any) {
        textone.layer.borderWidth = 1
        textone.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        texttwp.layer.borderWidth = 0
        textthree.layer.borderWidth = 0
        textfour.layer.borderWidth = 0

        

        
        
        
        
        
        if textone.text?.count == 1 {
            texttwp.becomeFirstResponder()
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.textone.isSecureTextEntry = true
            }
            
        }
    }
    
    
    


    
    
    
    @IBAction func texttwoaction(_ sender: Any) {
        texttwp.layer.borderWidth = 1
        texttwp.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        textone.layer.borderWidth = 0
        textthree.layer.borderWidth = 0
        textfour.layer.borderWidth = 0
        

        
        
        
        
        if texttwp.text?.count == 1 {
            textthree.becomeFirstResponder()
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.texttwp.isSecureTextEntry = true
            }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func texthreeaction(_ sender: Any) {
        textthree.layer.borderWidth = 1
        textthree.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        texttwp.layer.borderWidth = 0
        textone.layer.borderWidth = 0
        textfour.layer.borderWidth = 0
        

        
        if textthree.text?.count == 1 {
            textfour.becomeFirstResponder()
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.textthree.isSecureTextEntry = true
            }
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    @IBAction func textfouraction(_ sender: Any) {
        textfour.layer.borderWidth = 1
        textfour.layer.borderColor = CGColor(red: 77/255, green: 171/255, blue: 245/255, alpha: 1)
        texttwp.layer.borderWidth = 0
        textthree.layer.borderWidth = 0
        textone.layer.borderWidth = 0


        
        
     
        if textfour.text?.count == 1 {
            textfour.layer.borderWidth = 0
            textfour.isEnabled = false
            verifyotp.isEnabled = true
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5){
                self.textfour.isSecureTextEntry = true
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true)
    }
    
  
    
    
    @IBAction func verifyotpaction(_ sender: Any) {
        
        
        
        if (textone.text == "2" && texttwp.text == "0" && textthree.text == "0" && textfour.text == "5") {
            
            INVALIDTEXT.isHidden = true
    
            if let v = storyboard?.instantiateViewController(identifier: "seventhview") as? seventhViewController{
                navigationController?.pushViewController(v, animated: true)
            }
        }
        
        
        
        else {
            
            INVALIDTEXT.isHidden = false
            
            textone.layer.borderWidth = 1
            textone.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            
            texttwp.layer.borderWidth = 1
            texttwp.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            
            textthree.layer.borderWidth = 1
            textthree.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
            
            textfour.layer.borderWidth = 1
            textfour.layer.borderColor = CGColor(red: 246/255, green: 105/255, blue: 94/255, alpha: 1)
  
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.03) {
                self.textone.isSecureTextEntry = false
                self.texttwp.isSecureTextEntry = false
                self.textthree.isSecureTextEntry = false
                self.textfour.isSecureTextEntry = false
                
                
                
                self.textfour.isEnabled = true
                
                
                
                self.verifyotp.isEnabled = false
                self.textone.text = ""
                self.texttwp.text = ""
                self.textthree.text = ""
                self.textfour.text = ""
                
                
            }
        }
    }
}



