//
//  ViewController.swift
//  TempCal
//
//  Created by Sabrina Wilbert on 1/3/17.
//  Copyright © 2017 Sabrina Wilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    @IBOutlet var outputLabel: UILabel!
    
    
    @IBOutlet var formatSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        
        if formatSeg.selectedSegmentIndex == 0 {
        
            let fahrenheit = Double(textField.text!)
            let Celsius = (fahrenheit! - 32) / 1.8
            let result = String( format: "%4.1f Celsius", Celsius)
            outputLabel.text = result
            
            if Celsius > 120 {
            
                imageView.image = UIImage(named: "Temp9.png")
            
            } else if Celsius > 100 {
                
                imageView.image = UIImage(named: "Temp8.png")
                
            } else if Celsius > 80 {
                
                imageView.image = UIImage(named: "Temp7.png")
                
            } else if Celsius > 60 {
                
                imageView.image = UIImage(named: "Temp6.png")
                
            } else if Celsius > 40 {
                
                imageView.image = UIImage(named: "Temp5.png")
                
            }else if Celsius > 20 {
                
                imageView.image = UIImage(named: "Temp4.png")
                
            }else if Celsius > 0 {
                
                imageView.image = UIImage(named: "Temp3.png")
                
            }else if Celsius >= -20 {
                
                imageView.image = UIImage(named: "Temp2.png")
                
            }else if Celsius < -20 {
                
                imageView.image = UIImage(named: "Temp1.png")
                
            }
            
        
        }
        
        
        if formatSeg.selectedSegmentIndex == 1 {
            
            let Celsius = Double(textField.text!)
            let fahrenheit = (Celsius! * 1.8) + 32
            let result = String( format: "%4.1f Fahrenheit", fahrenheit)
            outputLabel.text = result
            
            if fahrenheit > 160 {
                
                imageView.image = UIImage(named: "Temp9.png")
                
            } else if fahrenheit > 140 {
                
                imageView.image = UIImage(named: "Temp8.png")
                
            } else if fahrenheit > 120 {
                
                imageView.image = UIImage(named: "Temp7.png")
                
            } else if fahrenheit > 100 {
                
                imageView.image = UIImage(named: "Temp6.png")
                
            } else if fahrenheit > 80 {
                
                imageView.image = UIImage(named: "Temp5.png")
                
            }else if fahrenheit > 60 {
                
                imageView.image = UIImage(named: "Temp4.png")
                
            }else if fahrenheit > 40 {
                
                imageView.image = UIImage(named: "Temp3.png")
                
            }else if fahrenheit >= 20 {
                
                imageView.image = UIImage(named: "Temp2.png")
                
            }else if fahrenheit < 20 {
                
                imageView.image = UIImage(named: "Temp1.png")
                
            }

        }
        
            
        self.resignFirstResponder()
        
        
    }
    
    
    
    @IBAction func FormatAction(_ sender: Any) {
        
        if formatSeg.selectedSegmentIndex == 0 {
            enterLabel.text = "Enter Fahrenheit"
            
            textField.text = ""
            outputLabel.text = "0 Celsius"
        }
        
        if formatSeg.selectedSegmentIndex == 1 {
            enterLabel.text = "Enter Celsius"
            
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
        }
    }
}

