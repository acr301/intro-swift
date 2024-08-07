//
//  ViewController.swift
//  VisualComponents
//
//  Created by LABORATORIO MAC UAM on 27/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstLabel: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    @IBOutlet weak var myButton: UIButton!
    
    
    @IBOutlet weak var myPageControl: UIPageControl!
    
    @IBOutlet weak var mySegementedControl: UISegmentedControl!
    
    
    @IBOutlet weak var labelStepper: UILabel!
    
    
    @IBOutlet weak var myStepper: UIStepper!
    
    
    private let values = ["uno", "dos", "tres", "cuatro", "cinco"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myFirstLabel.text = "cambio de label"
        
        mySegementedControl.removeAllSegments()
        
        
        for(index, values) in values.enumerated() {
            mySegementedControl.insertSegment(withTitle: values, at: index, animated: true)
        }
        
        
        myPageControl.numberOfPages = values.count
        
    
    }

    @IBAction func myFirstAction(_ sender: Any) {
        myFirstLabel.textColor = myFirstLabel.textColor == .red ? .blue : .red
        
        
    }
    
    @IBAction func mySwitch(_ sender: Any) {
        
        myButton.backgroundColor = mySwitch.isOn ? .blue : .red
    }
    
    
    @IBAction func mySegmentedAction(_ sender: Any) {
        
        myPageControl.currentPage = mySegementedControl.selectedSegmentIndex
    }
    
    
    
    @IBAction func myPageAction(_ sender: Any) {
        
        mySegementedControl.selectedSegmentIndex = myPageControl.currentPage
    }
    
    
    @IBAction func myStepperAction(_ sender: Any) {
        
        labelStepper.text = "\(myStepper.value)"
        
        
    }
    

}

