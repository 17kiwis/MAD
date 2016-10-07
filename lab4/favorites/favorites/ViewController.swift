//
//  ViewController.swift
//  favorites
//
//  Created by Emma Wu on 9/27/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bookLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!

    @IBOutlet weak var typeLable: UILabel!
    
    var user=Favorite()
    
    @IBAction func unwindSegue (segue:UIStoryboardSegue){
      
        bookLabel.text=user.favBook
        authorLabel.text=user.favAuthor
        typeLable.text=user.favType
    }
    
    override func viewDidLoad() {
        
        bookLabel.layer.borderWidth = 1.0
        authorLabel.layer.borderWidth = 1.0
        typeLable.layer.borderWidth = 1.0
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

