//
//  CarDetailViewController.swift
//  CarAppByIshrat
//
//  Created by Default User on 2/14/25.
//

import UIKit

class CarDetailViewController: UIViewController {

    
        @IBOutlet weak var makeField: UITextField!
        @IBOutlet weak var modelField: UITextField!
        @IBOutlet weak var yearField :UITextField!
        @IBOutlet weak var colorControl: UISegmentedControl!
        @IBOutlet weak var kmsField: UITextField!

        let mainDelegate = UIApplication.shared.delegate as! AppDelegate

    

        @IBAction func saveCarDetails(_ sender: UIButton) {
            
            mainDelegate.car?.make = makeField.text
            mainDelegate.car?.model = modelField.text
            mainDelegate.car?.year = yearField.text
            mainDelegate.car?.kms = kmsField.text

            
            let colorChosen = colorControl.selectedSegmentIndex
            mainDelegate.car?.color = colorControl.titleForSegment(at: colorChosen)

           
            let alertMsg = UIAlertController(title: "Confirmation", message: "Do you want to save these details?", preferredStyle: .alert)
            alertMsg.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                self.navigationController?.popViewController(animated: true)
            }))
            alertMsg.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            present(alertMsg, animated: true, completion: nil)
        }
        
    
        override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
