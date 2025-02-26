//
//  CarInfoViewController.swift
//  CarAppByIshrat
//
//  Created by Default User on 2/14/25.
//

import UIKit

class CarInfoViewController: UIViewController {

       @IBOutlet weak var makeLbl: UILabel!
       @IBOutlet weak var modelLbl: UILabel!
       @IBOutlet weak var yearLbl: UILabel!
       @IBOutlet weak var colorLbl: UILabel!
       @IBOutlet weak var kmsLbl: UILabel!

       let mainDelegate = UIApplication.shared.delegate as! AppDelegate

       override func viewDidLoad() {
           super.viewDidLoad()
           displayCarDetails()
       }

       func displayCarDetails() {
           if let car = mainDelegate.car {
               makeLbl.text = "Make: \(car.make ?? "N/A")"
               modelLbl.text = "Model: \(car.model ?? "N/A")"
               yearLbl.text = "Year: \(car.year ?? "N/A")"
               colorLbl.text = "Color: \(car.color ?? "N/A")"
               kmsLbl.text = "KMs: \(car.kms ?? "N/A")"
           }
       }
    
    @IBAction func uwindToCarInfoVC(Sender : UIStoryboardSegue){
        
    }
    
        
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
