//
//  ViewController.swift
//  Workout
//
//  Created by Emma Wu on 10/13/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var workOutTime: UITextField!
    
    
    @IBOutlet weak var miles: UILabel!
    
    @IBOutlet weak var caloriesBurned: UILabel!
    
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func updateRunCalories() {
        var time:Float //workout time
    
        
        if workOutTime.text!.isEmpty {
            time = 0.0
        } else {
            time = Float(workOutTime.text!)!
        }
        
        let mile = time/10
        let calories=time*10
        miles.text = "\(mile)"
        caloriesBurned.text = "\(calories)"
        
        let workOut=Int(workOutTime.text!)
        if workOut != nil {
            if workOut! < 30 {
                let alert=UIAlertController(title: "Warning", message: "Work out more to be more healthy", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction)
                //adds the alert action
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                    self.workOutTime.text="1"
                    self.updateRunCalories()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }


    }
    
    func updateSwimCalories() {
        var time:Float //workout time
        
        if workOutTime.text!.isEmpty {
            time = 0.0
        } else {
            time = Float(workOutTime.text!)!
        }
        
        let swimmile = time/30
        let swimcalories=time*7
        
        miles.text = "\(swimmile)"
        caloriesBurned.text = "\(swimcalories)"
        
        let workOut=Int(workOutTime.text!)
        if workOut != nil {
            if workOut! < 30 {
                let alert=UIAlertController(title: "Warning", message: "Work out more to be more healthy", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction)
                //adds the alert action
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                    self.workOutTime.text="1"
                    self.updateRunCalories()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }

    }
    
    
    func updateBikeCalories() {
        var time:Float //workout time
        
        if workOutTime.text!.isEmpty {
            time = 0.0
        } else {
            time = Float(workOutTime.text!)!
        }
        
        let bikemile = time/4
        let bikecalories=time*8.5
        
        miles.text = "\(bikemile)"
        caloriesBurned.text = "\(bikecalories)"
        
        let workOut=Int(workOutTime.text!)
        if workOut != nil {
            if workOut! < 30 {
                let alert=UIAlertController(title: "Warning", message: "Work out more to be more healthy", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction)
                //adds the alert action
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                    self.workOutTime.text="1"
                    self.updateRunCalories()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            }
        }

    }
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateBikeCalories()
    }
    
    @IBOutlet weak var sportImg: UIImageView!
    
    
    @IBOutlet weak var sportControl: UISegmentedControl!
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
        if sportControl.selectedSegmentIndex == 0 {
            sportImg.image=UIImage(named: "run")
            updateRunCalories()
            
        }
        else if sportControl.selectedSegmentIndex == 1 {
            sportImg.image=UIImage(named: "swim")
            updateSwimCalories()
        }
        
        else if sportControl.selectedSegmentIndex == 2 {
            sportImg.image=UIImage(named: "bike")
            updateBikeCalories()
        }

            }
    

    
    
    @IBOutlet weak var workoutPerWeek: UILabel!
    
    @IBAction func changeWorkoutPerWeek(sender: UISlider) {
    }
    
    
    
    
    
    @IBOutlet weak var weekSwitch: UISwitch!
    
    @IBAction func updateWeek(sender: AnyObject) {
    }
    
    
    
    override func viewDidLoad() {
        
        workOutTime.delegate=self
        super.viewDidLoad()

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

