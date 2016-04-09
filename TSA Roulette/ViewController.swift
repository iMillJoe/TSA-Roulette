//
//  ViewController.swift
//  TSA Roulette
//
//  Created by iMillJoe on 4/6/16.
//  Copyright © 2016 iMillIndustries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bigButton: UIButton!
    
    var lefts = 0
    var rights = 0
    
    var arrayOfTSAMisery: [String] = [
        "Your 8 y/o must be stripped searched, by a known pedophile, the delay will cause you to miss your flight, you get no refund, and have to pay bail for your subsiquent actions",
        
        "a lovely looking TSA agent is calling you to the inspetion station, whist patting you down she untentionally, yet firmly grabs your 1/2 hard cock, blisfully unaware it was dangiling there. She blushes and walks away. This is the only time this incident has been reported.",
        
        "Your Grandmother who you are escorting to a cancer hospital must recive the most thouro of TSA screanings, in the process, they bleed all the air from her oxegin tank, she does not survive ",
        
        "Upon running your name through the TSA databse, it was dicovered you have name simmilar in spelling to that of an IRA bomber, who died before you were born. You should feel luckey, must people never get to know why they are on the no fly list"
    ]
    
    @IBAction func bigButtonHit(sender: UIButton) {
        
        if let buttonLabel = bigButton.currentTitle {

            bigButton.titleLabel?.font = UIFont.boldSystemFontOfSize(260)
            switch buttonLabel {
            case "": //if the screen is blank, roll the dice!
                
                let bitchFlip = arc4random_uniform(10)
                print("bitchFlip:\(bitchFlip)")
                
                // if it's time to make a sassy stament,
                if bitchFlip == 9 {
                    let thisMishap = arc4random_uniform(UInt32(arrayOfTSAMisery.count))
                    bigButton.titleLabel?.font = UIFont.systemFontOfSize(30)
                    bigButton.setTitle(arrayOfTSAMisery[Int(thisMishap)], forState: UIControlState.Normal)
        
                } else {
                    
                    let coinFlip = arc4random_uniform(2)
                    print("coinFlip: \(coinFlip)")
                    
                    if coinFlip == 0 {
                        bigButton.setTitle("←", forState: UIControlState.Normal)
                        lefts += 1
                        print("lefts:\(lefts)")
                    } else {
                        bigButton.setTitle("→", forState: UIControlState.Normal)
                        rights += 1
                        print("rights:\(rights)")
                    }
                }
                // set the screan blank
                print("rights: \(rights) lefts: \(lefts)")
            default:
                bigButton.setTitle("", forState: UIControlState.Normal)
            }
        }
        print("\n")
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

