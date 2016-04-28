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
        
        "A lovely looking TSA agent called you to the inspection station, whist patting you down she unintentionally, yet firmly grabs your 1/2 hard cock, blissfully unaware it was dangling there. She blushes and walks away. This is the only time this incident has been reported.",
        
        "Your Grandmother who you are escorting to a cancer hospital must receive the most thorough of TSA screenings, in the process, the TSA agents bleed all the air from her oxygen tank. She does not survive.",
        
        "Upon running your name through the TSA database, it was discovered you have name similar in spelling to that of an IRA bomber, who died before you were born. You should feel lucky, most people never get to know why they are on the no fly list",
        
        "The TSA agent you are about to encounter has just seen a rather seedy video of his wife and 10 other men. He is going to take his anger out on you... \n\nI hear Gitmo is nice this time of year, happy travels.",
        
        "The Xray machine shows that you might have a knife in your bag. They manually check the bag and find that there is no knife. They repack the gun, magazine and mace very professionally before waving you on.",
        
        "The TSA randomiser, is a truely random app, you are now stuck in a long line, after an unbliviable 87 lefts in a row"
    ]
    
    @IBAction func bigButtonHit(sender: UIButton) {
        
        if let buttonLabel = bigButton.currentTitle {


            switch buttonLabel {
            case "": //if the screen is blank, roll the dice!
                
                let bitchFlip = arc4random_uniform(10)
                print("bitchFlip:\(bitchFlip)")
                
                // if it's time to make a sassy stament,
                if bitchFlip == 9 {
                    let thisMishap = arc4random_uniform(UInt32(arrayOfTSAMisery.count))
                    bigButton.titleLabel?.font = UIFont.systemFontOfSize(30)
                    bigButton.setTitle(arrayOfTSAMisery[Int(thisMishap)], forState: UIControlState.Normal)
                    print("\(Int(thisMishap))")
        
                } else {
                    bigButton.titleLabel?.font = UIFont.boldSystemFontOfSize(260)
                    
                    let coinFlip = arc4random_uniform(2)
                    print("coinFlip: \(coinFlip)")
                    
                    if coinFlip == 0 {
                        bigButton.setTitle("←", forState: UIControlState.Normal)
                        lefts += 1
                    } else {
                        bigButton.setTitle("→", forState: UIControlState.Normal)
                        rights += 1
                    }
                }
                // set the screan blank
                print("rights: \(rights) lefts: \(lefts)")
            default:
                bigButton.setTitle("", forState: UIControlState.Normal)
            }
            print("\n")
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

