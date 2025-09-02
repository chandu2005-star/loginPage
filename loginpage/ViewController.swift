import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var vviewlast: UIView!
    @IBOutlet weak var admissionum: UILabel!
    @IBOutlet weak var learnlabel: UILabel!
    
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textfiled: UITextField!
    
    
    
    @IBOutlet weak var BACKVIEW: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfiled.layer.cornerRadius = 10
        button.layer.cornerRadius = 10
        textfiled.clipsToBounds = true
        button.clipsToBounds = true
        vviewlast.layer.cornerRadius = 16
        vviewlast.layer.borderWidth = 1
        vviewlast.layer.borderColor = CGColor(red: 77/255, green: 191/255, blue: 155/255, alpha: 0.29)
        admissionum.font = .systemFont(ofSize: 12, weight: UIFont.Weight(rawValue: 0.6))
        learnlabel.font = .systemFont(ofSize: 32, weight: UIFont.Weight(rawValue: 0.8))
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func textfield(_ sender: UITextField) {
        if let v = storyboard?.instantiateViewController(withIdentifier: "nav") as? UINavigationController {
            v.modalPresentationStyle = .fullScreen
            present(v, animated: true)
        }
        
    }
    
    
    
    @IBAction func textfieldbutton(_ sender: UIButton){
        if let v = storyboard?.instantiateViewController(withIdentifier: "nav") as? UINavigationController {
            v.modalPresentationStyle = .fullScreen
            present(v, animated: true)
        }
    }
}


