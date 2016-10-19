//
//  ViewController.swift
//  gestures
//
//  Created by Emma Wu on 10/6/16.
//  Copyright © 2016 Emma Wu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIGestureRecognizerDelegate{
    //every connection need to be connect on the image not the pannel
    var audioPlayer : AVAudioPlayer?
    //UIGestureRecognizerDelegate allows mutiple gesture to be recornized at the same time
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    //default restures no so we need to get it returen true
    
    
    @IBAction func handleLongPress(sender: UILongPressGestureRecognizer) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("Last of the Jedi", ofType: "mp3")
        let fileURL = NSURL(fileURLWithPath: audioFilePath!)
        audioPlayer = try? AVAudioPlayer(contentsOfURL: fileURL)
        if audioPlayer != nil{
            audioPlayer!.play()
        }
        //NS buddle is
        //need to import before use go in the project folder in library add AVFoundation framework
    }
    
    
    
    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
    sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
    sender.scale=1
        //resets scale. reset at the end because it allows it to restart to the same position for next time
        //handles central property and scale
    }
    
    
    @IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
            sender.view!.transform =
                CGAffineTransformRotate(sender.view!.transform, sender.rotation)
            sender.rotation=0
        //reset rotation the same, to allow it restart in the same position
        //rotation is under radiance not degree
    }
    
    
    
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        //perameter = sender
        //name=handlePan
        let translation = sender.translationInView(view)
        //returns the new location
        //translationInView is
        sender.view!.center = CGPoint(x: sender.view!.center.x +
            translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
        //set the translation back to 0
        
        
        
        if sender.state == UIGestureRecognizerState.Ended { //when the move ends
            //figure out the velocity
            let velocity = sender.velocityInView(self.view)
            let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y *
                velocity.y))
            let slideMultiplier = magnitude / 200
            //if the length is < 200, then decrease the base speed, otherwise increase it
            let slideFactor = 0.1 * slideMultiplier
            //increase for a greater slide
            //calculate a final point based on the velocity and the
            slideFactor
            var finalPoint = CGPoint(x:sender.view!.center.x + (velocity.x *
                slideFactor), y:sender.view!.center.y + (velocity.y * slideFactor))
            //make sure the final point is within the view’s bounds
            finalPoint.x = min(max(finalPoint.x, 0),
                               self.view.bounds.size.width)
            finalPoint.y = min(max(finalPoint.y, 0),
                               self.view.bounds.size.height)
            //animate the view
            UIView.animateWithDuration(Double(slideFactor * 2), delay: 0,
                                       options: UIViewAnimationOptions.CurveEaseOut, animations:
                {sender.view!.center = finalPoint }, completion: nil)
        }
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

