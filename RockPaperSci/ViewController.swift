//
//  ViewController.swift
//  RockPaperSci
//
//  Created by Raghav Rastogi on 02/06/16.
//  Copyright © 2016 Raghav Rastogi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButon: UIButton!
    @IBOutlet weak var scisButton: UIButton!
    
    func randomObjectSelection() -> Int {
        let randomObjects = 1 + arc4random() % 3
        
        return Int(randomObjects)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier! {
            
            case "paperResultsView":
                let controller = segue.destinationViewController as! ResultsViewController
                controller.opponentValue = self.randomObjectSelection()
                controller.playerValue = 1
            case "rockResultsView":
                let controller = segue.destinationViewController as! ResultsViewController
                controller.opponentValue = self.randomObjectSelection()
                controller.playerValue = 2
            case "sciResultsView":
                let controller = segue.destinationViewController as! ResultsViewController
                controller.opponentValue = self.randomObjectSelection()
                controller.playerValue = 3
        default:
            print("Something wrong")
        }
        
    }
}

