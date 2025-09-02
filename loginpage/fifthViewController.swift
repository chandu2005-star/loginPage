import UIKit

class fifthViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var touchme: UIButton!
    @IBOutlet weak var heightconst: NSLayoutConstraint!
    @IBOutlet weak var ninoneview: UIView!
    @IBOutlet weak var admnumview: UIView!
    @IBOutlet weak var tabviewview: UIView!
    @IBOutlet weak var tabview: UITableView!
    @IBOutlet weak var admnum: UITextField!
    @IBOutlet weak var alphaview: UIView!
    @IBOutlet weak var nineonetextfield: UITextField!
    @IBOutlet weak var NINEONELAB: UILabel!
    @IBOutlet weak var otp: UIButton!
    @IBOutlet weak var admissionnum: UITextField!
    var x: String?
    var array:[String] = ["9182216765","8790509262","7654321982"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        touchme.isHidden = true
        
        navigationItem.hidesBackButton = true
        
        alphaview.isHidden = true
        tabviewview.layer.cornerRadius = 20
        tabviewview.clipsToBounds = true
        tabviewview.isHidden = true
        tabview.isHidden = true
        nineonetextfield.layer.borderWidth = 0
        NINEONELAB.layer.borderWidth = 0
        NINEONELAB.layer.cornerRadius = 10
        nineonetextfield.layer.cornerRadius = 10
        admissionnum.isEnabled = false
        nineonetextfield.isEnabled = false
        admissionnum.placeholder = x
        NINEONELAB.clipsToBounds = true
        nineonetextfield.clipsToBounds = true
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func phonenumberbutton(_ sender: Any) {
        
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    
    
    
    
    
    
    @IBAction func backbutton(_ sender: Any) {
//        dismiss(animated: true)
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
    
    
    @IBAction func otpaction(_ sender: Any) {
        if let v = storyboard?.instantiateViewController(identifier: "sixthview") as? sixthViewController{
            v.dummy = nineonetextfield.text
            navigationController?.pushViewController(v, animated: true)
//            v.modalPresentationStyle = .fullScreen
//            present(v, animated: true)
        }
    }
    

    
    @IBAction func downarrow(_ sender: Any) {
        touchme.isHidden = false
        alphaview.isHidden = false
        self.alphaview.alpha = 0.5
        tabview.isHidden = false
        tabviewview.isHidden = false
        heightconst.constant = 0
        view.layoutIfNeeded()
        UIView.animate(withDuration: 0.2) {
            self.heightconst.constant = 360
            self.view.layoutIfNeeded()
            }
    }

    @IBAction func gethelpaction(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let v = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        v.textLabel?.text = array[indexPath.row]
        return v
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Select Mobile number"
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.08){ [self] in
            self.nineonetextfield.text = self.array[indexPath.row]
            UIView.animate(withDuration: 0.2) {
                self.heightconst.constant = 0
                self.view.layoutIfNeeded()
                }
            alphaview.isHidden = true
            touchme.isHidden = true
        }
        
    }
    
    
    
    
    
    @IBAction func touchmeaction(_ sender: Any) {
        

        UIView.animate(withDuration: 0.2) {
            self.heightconst.constant = 0
            self.view.layoutIfNeeded()
            }
        alphaview.isHidden = true
        touchme.isHidden = true
        
        
        
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .white

        let label = UILabel()
        label.text = "  Select Mobile number"
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.frame = CGRect(x: 10, y: -8, width: tableView.frame.width, height: 56)
        headerView.addSubview(label)
        
        // Bottom separator line
        let separator = UIView()
        separator.backgroundColor = .lightGray
        separator.frame = CGRect(x: 0, y: 55, width: tableView.frame.width, height: 1)
        headerView.addSubview(separator)

        return headerView
    }

    
    
    
    
    
}
