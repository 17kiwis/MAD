//
//  ViewController.swift
//  English Leaner
//
//  Created by Emma Wu on 10/10/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func test(sender: UIButton) {
        if imgControl.selectedSegmentIndex==0
        {
            if let url = NSURL(string: "https://www.youtube.com/watch?v=l96V7dQtq9E")
            {
                UIApplication.sharedApplication().openURL(url)
            }
        }
        else if imgControl.selectedSegmentIndex==1
        {
            if let url = NSURL(string: "https://www.youtube.com/watch?v=DHg1krpvg9s")
            {
                UIApplication.sharedApplication().openURL(url)
            }
        }
        
    }
 
    @IBOutlet weak var buttonImg: UIImageView!

    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var imgControl: UISegmentedControl!
    @IBAction func changeInfo(sender: UISegmentedControl)
    {
        if imgControl.selectedSegmentIndex==0
        {
            titleLable.text="Have your words came out naturally"
            buttonImg.image=UIImage(named: "speak")
            
        }
        else if imgControl.selectedSegmentIndex==1
        {
            titleLable.text="Basic Grammar rules of the language"
            buttonImg.image=UIImage(named: "grammar")
        }
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let urlGrammar = NSURL(string: "https://www.youtube.com/watch?v=WVP3fUzQHcg")
//        let callGrammar = NSURLRequest(URL: urlGrammar!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

