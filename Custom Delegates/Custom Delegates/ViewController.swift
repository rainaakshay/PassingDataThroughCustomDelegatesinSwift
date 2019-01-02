//
//  ViewController.swift
//  Custom Delegates
//
//  Created by apple on 28/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController,VCFinalDelegate {
   
//    var arr: [String]! = nil
//
//    var txtlabel: UILabel!
//
    
    @IBOutlet weak var dataStatusLabel: UILabel!
    
    @IBOutlet weak var testVarLabel: UILabel!
    
  
    
    var testingVarFinal: String = "TestingVarFinal is Empty right now"
    
    var testVar : String = "Empty"
    
    func passDataFinished(string: String) {
        
//        print("Reached VCOne")
        testVarLabel.text = string
//        print("Label in vcOne Set")
//        txtlabel = dataStatusLabel
//        print(txtlabel.text!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! VCFinal
        
        vc.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testVarLabel.text = testVar
    }
    @IBAction func buttonSegue(_ sender: Any) {
        performSegue(withIdentifier: "FirstToSecond", sender: self)
    }
    

}

