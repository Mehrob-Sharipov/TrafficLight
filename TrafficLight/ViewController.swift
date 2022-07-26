//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sharipov Mehrob on 24.07.2022.
//

import UIKit

enum CurrentLight {
    case red
    case orange
    case green
}

class ViewController: UIViewController {
    @IBOutlet var RedLable: UIView!
    @IBOutlet var OrangeLable: UIView!
    @IBOutlet var GreenLable: UIView!
    
    
    @IBOutlet var RGBButton: UIButton!
    
    private var currentLight = CurrentLight.red
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        RedLable.layer.cornerRadius = 80
        OrangeLable.layer.cornerRadius = 80
        GreenLable.layer.cornerRadius = 80
        

        
        RGBButton.layer.cornerRadius = 18
   
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func statButton() {
    
    
        RGBButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            GreenLable.alpha = 0.3
            RedLable.alpha = 1
            currentLight = .orange
            
        case .orange:
            RedLable.alpha = 0.3
            OrangeLable.alpha = 1
            currentLight = .green
        case .green:
            OrangeLable.alpha = 0.3
            GreenLable.alpha = 1
            currentLight = .red
        }
        
        
            
        }


}
