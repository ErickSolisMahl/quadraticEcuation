//
//  ViewController.swift
//  ecuacionSegundoGrado
//
//  Created by Erick Solis Mahl on 24/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var root1Lbl: UILabel!
    @IBOutlet weak var root2Lbl: UILabel!
    
    

    
    @IBAction func solveEcuation(_ sender: Any) {
        let a = Double(aTextField.text!)!
        let b = Double(bTextField.text!)!
        let c = Double(cTextField.text!)!
        
        let bSquere = b * b
        let discriminant = bSquere - (4 * a * c)
        let isImaginary = discriminant < 0
        let discriminantAbsSqtr = sqrt(fabs(discriminant))
    
        if isImaginary {
            root1Lbl.text  = "(\(-b/2) + \(discriminantAbsSqtr / (2*a))i"
            root2Lbl.text = " (\(-b/2) - \(discriminantAbsSqtr / (2*a))i"
        } else {
            let topFormula = -b + discriminantAbsSqtr
            let bottomFormula = 2 * a
            let totalX = topFormula / bottomFormula
            
            let topFormula2 = -b - discriminant
            let totalX2 = topFormula2 / bottomFormula
            
            root1Lbl.text = "\(totalX)"
            root2Lbl.text = "\(totalX2)"
                        
            
        }
    }
}

