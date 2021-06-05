//
//  ViewController.swift
//  MemeMaker
//
//  Created by  Mr.Ki on 05.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
  
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValues()
        
    }
    
    func configureTopSegmentControl()  {
        topCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🍺", text: "You know what's cool?")
        let option2 = CaptionOption(emoji: "🧨", text: "You know what makes me mad?")
        let option3 = CaptionOption(emoji: "🍩", text: "You know what I love?")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentControl()  {
        bottomCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "🐱", text: "Cats wearing hats")
        let option2 = CaptionOption(emoji: "🐶", text: "Dogs carrying logs")
        let option3 = CaptionOption(emoji: "🐵", text: "Monkeys being funky")
        bottomChoices = [option1, option2, option3]
        
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    func selectInitValues() {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = bottomChoices.first?.text
    }
    
    @IBAction func topSegmenValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
            //topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
    }
    

    
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
            //topChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.text
    }
    
}

