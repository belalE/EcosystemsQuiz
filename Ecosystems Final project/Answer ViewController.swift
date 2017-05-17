//
//  Answer ViewController.swift
//  Ecosystems Final project
//
//  Created by mac pro on 5/17/17.
//  Copyright © 2017 Raamis & Belal. All rights reserved.
//

import UIKit

class Answer_ViewController: UIViewController {

    
    var answerSent = "NO ANSWER"
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBOutlet weak var HelpText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if answerSent == "A plant growing to the side to get sunlight" or "Producer,Primary Consumer,Secondary Consumer,Tertiary Consumer,Decomposer." {
        
            self.checkLabel.text = "✅ Correct"
        }
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
