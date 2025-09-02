import UIKit

class lastViewController: UIViewController {

    @IBOutlet weak var log: UIButton!
    var sample: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(sample ?? "")
//        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = true
        log.layer.cornerRadius = 10
        log.clipsToBounds = true
    }
    
    @IBAction func loginaction(_ sender: Any) {
        if let loginVC = storyboard?.instantiateViewController(identifier: "SecViewController") as? SecViewController {
            loginVC.samp = sample ?? ""
//            homeVC.modalPresentationStyle = .fullScreen
//            self.present(homeVC, animated: true)
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}
