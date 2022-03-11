//
//  ViewController.swift
//  BodyMassIndex
//
//  Created by english on 2021-09-14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var txtresult: UILabel!
    @IBAction func btncalculate(_ sender: Any) {
        
        
        
        if let heightString : String = txtHeight.text{
            if let weightString : String = txtWeight.text{
            if let heightIncm : Double=Double(heightString){
                
               
                    if let weightInkg : Double = Double(weightString){
                
                        let result = ((weightInkg / (heightIncm * heightIncm )) * 10000)

                        switch result {
                        case 0..<18.5:
                            txtresult.backgroundColor = UIColor.init(red: 0, green: 183, blue: 255, alpha: 1)
                            txtresult.text = "BMI Undrweight"
                            break
                        case 18.5..<24.9:
                            txtresult.backgroundColor = UIColor.init(red: 0, green: 255, blue: 20, alpha: 1)
                            txtresult.text = "BMI Normal"
                            break
                        case 25.0..<29.9:
                            txtresult.backgroundColor = UIColor.init(red: 250, green: 130, blue: 0, alpha: 1)
                            txtresult.text = "BMI Overweight"
                            break
                        case 30.0..<34.9:
                            txtresult.backgroundColor = UIColor.init(red: 255, green: 0, blue: 0, alpha: 1)
                            txtresult.text = "BMI Obese"
                            break
                        default:
                            txtresult.text = "Invalid"
                        }
             //   txtresult.text = "BMI Classification \(result)"
                
                txtresult.isHidden=false
            }
        }
        
        
        
    }
    
    
  
    
    
  
    
    
            func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        }
    }
}

