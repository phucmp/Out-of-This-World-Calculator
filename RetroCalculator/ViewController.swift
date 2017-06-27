//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Paul Minh Pham on 6/25/17.
//  Copyright © 2017 Paul Minh Pham. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError{
            print(err.debugDescription)
        }
    }
    
    @IBAction func numberPressed(_sender: UIButton) {
        playSound()
    }
    
    func playSound(){
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
    }

}

