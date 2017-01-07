//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Nick Natali on 12/30/16.
//  Copyright © 2016 Make It Appen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    var audioPath = Bundle.main.path(forResource: "Broccoli", ofType: "mp3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture: )))
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture: )))
        
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        
           }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("device was shaken")
        }
    }
    
    
    func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesuter = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesuter.direction {
                
            case UISwipeGestureRecognizerDirection.right:
                print("User swiped right")
                
                do
                {
                    audioPath = Bundle.main.path(forResource: "Sunday Candy", ofType: "mp3")
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                    player.play()
                    
                } catch {
                    
                }
                
                
            case UISwipeGestureRecognizerDirection.left:
                print("User swiped left")
                
                do
                {
                    audioPath = Bundle.main.path(forResource: "Broccoli", ofType: "mp3")
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                    player.play()
                    
                } catch {
                    
                }
                
                
                
            case UISwipeGestureRecognizerDirection.up:
                print("USer swiped  up")
                
                do
                {
                    audioPath = Bundle.main.path(forResource: "Talk is cheap", ofType: "mp3")
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                    player.play()
                } catch {
                    
                }
                
                
                
            case UISwipeGestureRecognizerDirection.down:
                print("User swiped down")
                
                do
                {
                    audioPath = Bundle.main.path(forResource: "StrawberryBubblegum", ofType: "mp3")
                    try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                    player.play()
                } catch {
                    
                }
                
                
                
            default:
                break
                
            }
            
            
        }
        
    }

    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

