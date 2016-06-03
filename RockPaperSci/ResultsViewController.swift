//
//  ResultsViewController.swift
//  RockPaperSci
//
//  Created by Raghav Rastogi on 03/06/16.
//  Copyright © 2016 Raghav Rastogi. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultMessage:UILabel!
    @IBOutlet var resultImage:UIImageView!
    
    var opponentValue:Int?
    var playerValue:Int?
    
    override func viewWillAppear(animated: Bool) {
        if let playerValue = self.playerValue {
            switch playerValue {
            case 1:
                if let opponentValue = self.opponentValue {
                    switch opponentValue {
                    case 1:
                        self.resultImage.image = UIImage(named: "tie")
                        self.resultMessage.text = "its a tie"
                    case 2:
                        self.resultImage.image = UIImage(named: "pr")
                        self.resultMessage.text = "paper covers rock.You win!!!"
                    case 3:
                        self.resultImage.image = UIImage(named: "sp")
                        self.resultMessage.text = "sci cuts paper.You looooose!!!"
                    default:
                        print("Some")
                    }
                }
            case 2:
                if let opponentValue = self.opponentValue {
                    switch opponentValue {
                    case 1:
                        self.resultImage.image = UIImage(named: "pr")
                        self.resultMessage.text = "paper covers rock.You loose!!"
                    case 2:
                        self.resultImage.image = UIImage(named: "tie")
                        self.resultMessage.text = "its a tie"
                    case 3:
                        self.resultImage.image = UIImage(named: "rs")
                        self.resultMessage.text = "sci can't cut rock.You win!!!!"
                    default:
                        print("Some")
                    }
                }
            case 3:
                if let opponentValue = self.opponentValue {
                    switch opponentValue {
                    case 1:
                        self.resultImage.image = UIImage(named: "sp")
                        self.resultMessage.text = "sci cuts paper.You win!!!"
                    case 2:
                        self.resultImage.image = UIImage(named: "rs")
                        self.resultMessage.text = "sci can't cut rock.You loooose!!!"
                    case 3:
                        self.resultImage.image = UIImage(named: "tie")
                        self.resultMessage.text = "its a tie"
                    default:
                        print("Some")
                    }
                }
            default:
                print("some")
        }
    }
}
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
