//
//  ViewController.swift
//  helloworld
//
//  Created by Emma Wu on 8/25/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageText: UILabel!
    //created a variable and class UILabel
    @IBAction func buttonPressed(sender: UIButton) {
        MessageText.text="Hello Class!"
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

