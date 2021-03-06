//
//  ViewController.swift
//  MemeMaker
//
//  Created by ย Mr.Ki on 05.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    
    
    @IBOutlet weak var topLabel: UILabel!
    
    
    @IBOutlet weak var mainImageView: UIImageView!
    
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
        let option1 = CaptionOption(emoji: "๐บ", text: "You know what's cool?", fileName: "homer4")
        let option2 = CaptionOption(emoji: "๐งจ", text: "You know what makes me mad?", fileName: "homer3")
        let option3 = CaptionOption(emoji: "๐ฉ", text: "You know what I love?", fileName: "homer")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
    }
    
    func configureBottomSegmentControl()  {
        bottomCaptionSegmentControl.removeAllSegments()
        let option1 = CaptionOption(emoji: "๐ฑ", text: "Cats wearing hats", fileName: "homer")
        let option2 = CaptionOption(emoji: "๐ถ", text: "Dogs carrying logs", fileName: "homer3")
        let option3 = CaptionOption(emoji: "๐ต", text: "Monkeys being funky", fileName: "homer4")
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
        
        mainImageView.image = UIImage(named: topChoices[0].fileName)
    }
    
    @IBAction func topSegmenValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
            //topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.fileName)
    }
    

    
    @IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
            //topChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.fileName)
    }
    
}

