import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var admissionnum: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        submit.layer.cornerRadius = 10
    }
    
    @IBAction func submitaction(_ sender: Any) {
        if admissionnum.text != ""{
            if let v = storyboard?.instantiateViewController(identifier: "fifthview") as? fifthViewController{
              
                v.x = admissionnum.text
//                v.modalPresentationStyle = .fullScreen
//                present(v, animated: true)
                navigationController?.pushViewController(v, animated: true)
            }}
    }
    
    @IBAction func backbutton(_ sender: Any) {
//          dismiss(animated: true)
        navigationController?.popViewController(animated: true)
    }
    
}
