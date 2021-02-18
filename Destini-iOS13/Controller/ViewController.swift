//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var currentStory = 0
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You see a treausre chest.", choice1: "Open it.", choice2: "Check for traps."),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle
        if(choice == stories[currentStory].choice1){
            currentStory = 1
        }else{
            currentStory = 2
        }
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = stories[currentStory].title
        choice1Button.setTitle(stories[currentStory].choice1, for: .normal)
        choice2Button.setTitle(stories[currentStory].choice2, for: .normal)
    }
}

