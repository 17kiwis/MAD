//
//  ViewController.swift
//  Cats
//
//  Created by Emma Wu on 8/30/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func chooseArt(sender: UIButton) {
        if sender.currentTitle=="White"{
            artImage.image=UIImage(named: "cat2.jpeg")
    }
        else if sender.currentTitle=="Gray"{
            artImage.image=UIImage(named: "cat3.jpg")}
    }

    @IBOutlet weak var frontImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

