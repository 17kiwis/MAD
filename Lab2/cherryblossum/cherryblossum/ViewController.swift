//
//  ViewController.swift
//  cherryblossum
//
//  Created by Emma Wu on 9/19/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frontimage: UIImageView!
    @IBOutlet weak var blossomlabel: UILabel!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBAction func changeInfo(sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex==0 {
            blossomlabel.text="Pink Blossoms"
            frontimage.image=UIImage(named: "c2")
        }
        else if imageControl.selectedSegmentIndex==1 {
            blossomlabel.text="Blue Blossoms"
            frontimage.image=UIImage(named: "c3")
        }
    }
    
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBAction func updateFont(sender: UISwitch) {
        if capitalSwitch.on {
            blossomlabel.text=blossomlabel.text?.uppercaseString
        } else {
            blossomlabel.text=blossomlabel.text?.lowercaseString
        }
        
    }
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        blossomlabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

