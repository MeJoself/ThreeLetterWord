//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by Jose Faustino on 4/4/22.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet var wordLabels: [UILabel]!
    
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    var counter = 0
    
    var currentLetter = "A,"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whenTapped(_ sender: Any)
    {
     currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
        let selectedPoint = ((sender as! AnyObject).location(in: stackView))
   
        for label in wordLabels
        {
            if
                label.frame.contains(selectedPoint)
            {
                label.text =
                       "\(currentLetter)"
            }
            
        }
        
        counter += 1
        
        
    }
    
    

}

