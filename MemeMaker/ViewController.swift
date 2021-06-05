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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTopSegmentControl()
        
        
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
    
    @IBAction func topSegmenValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
            //topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
    }
    
}

