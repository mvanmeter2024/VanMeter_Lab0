//
//  ViewController.swift
//  VanMeter_Lab0
//
//  Created by Mackenzie VanMeter on 9/1/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    @IBOutlet weak var schoolNameLabel: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPetsLabel.text = String(Int(sender.value))
    }
    
    
    @IBAction func introduceSelfButtonTapped(_ sender: UIButton) {
        // Gets the selected year from the segmented control
            let year = YearSegmentedControl.titleForSegment(

                at: YearSegmentedControl.selectedSegmentIndex

            )
            let introduction = """

            My name is \(firstNameLabel.text!) \(lastNameLabel.text!) and I attend \(schoolNameLabel.text!).

            I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.

            It is \(morePetsSwitch.isOn) that I want more pets.

            """
            // Creates the alert box
            let alertController = UIAlertController(
                title: "My Introduction",
                message: introduction,
                preferredStyle: .alert
                )
                let action = UIAlertAction(

                        title: "Nice to meet you!",
                        style: .default,
                        handler: nil
                    )
                    // Adds the button to the alert
                    alertController.addAction(action)
                    // Displays the alert
                    present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

