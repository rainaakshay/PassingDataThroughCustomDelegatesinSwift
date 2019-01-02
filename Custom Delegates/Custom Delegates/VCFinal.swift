//
//  VCFinal.swift
//  Custom Delegates
//
//  Created by apple on 28/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

protocol VCFinalDelegate
{
//    var testingVarFinal : String { get set }
    func passDataFinished(string: String)
//    var txtlabel : UILabel! {get set}
//    var arr : [String]! {get set}
}


class VCFinal: UIViewController {

    var delegate : VCFinalDelegate?
    
    
    @IBAction func ButtonPassDataPressed(_ sender: Any) {
        delegate?.passDataFinished(string: "Passing Data is Finished ! Sent from Final view controller")
//        delegate?.testingVarFinal = "Data Captured !"
//        delegate?.txtlabel.text = delegate?.testingVarFinal
//        delegate?.arr.append((delegate?.testingVarFinal)!)
//        delegate?.arr.append("Array Finished")
        print("Finished in VC Final")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
