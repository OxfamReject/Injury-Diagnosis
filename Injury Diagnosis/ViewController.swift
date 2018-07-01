//
//  ViewController.swift
//  Injury Diagnosis
//
//  Created by Jo Thorpe on 26/06/2018.
//  Copyright © 2018 Oxfam Reject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let story1 = "Welcome to the Injury Diagnosis App. \n Please select the sort of injury you have."
    let answer1a = "Bite or Sting"
    let answer1b = "Foreign body in Eye"
    
    
    let story2 = "Does your eye have a concering appearance or do you only have other symptoms such as dry eyes?"
    let answer2a = "Concering appearance of the eye"
    let answer2b = "Dry eyes or other"
    
    let story3 = "Are you feeling ill or unwell?"
    let answer3a = "Yes"
    let answer3b = "No"
    
    let story4 = "Please go to A & E to get this injury seen to"
    let story5 = "Please see a pharmacist, get advice from NHS 111 or a walk in centre, or call your GP practice for advice"
    let story6 = "Please call an ambulance immediately - this may be a serious injury"
    
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
     var storyIndex: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topButton.layer.cornerRadius = 20
        topButton.clipsToBounds = true
        bottomButton.layer.cornerRadius = 20
        bottomButton.clipsToBounds = true
        resetButton.layer.cornerRadius = 20
        resetButton.clipsToBounds = true
        restart()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 && storyIndex == 1 {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            
        } else if sender.tag == 2 && storyIndex == 1{
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2
            
        } else if sender.tag == 1 && storyIndex == 3{
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
            
        } else if sender.tag == 2 && storyIndex == 3{
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
            
        } else if sender.tag == 1 && storyIndex == 2{
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
            
        } else if sender.tag == 2 && storyIndex == 2{
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
            
        }
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            resetButton.isHidden = false
        }
    }
    
    
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        restart()
    }
    
    
    func restart(){
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        storyIndex = 1
        resetButton.isHidden = true
        storyTextView.text = story1
        topButton.isHidden = false
        bottomButton.isHidden = false
    }


}

