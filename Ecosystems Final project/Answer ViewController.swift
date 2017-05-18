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
        
        if answerSent == "A plant growing to the side to get sunlight" {
        
            self.checkLabel.text = "✅ Correct"
            self.HelpText.text = "Good Job!"
        }
        if answerSent ==  "Producer,Primary Consumer,Secondary Consumer,Tertiary Consumer,Decomposer." {
            self.checkLabel.text = "✅ Correct"
            self.HelpText.text = "Good Job!"

        }
        
        
        if answerSent == "Producer,Secondary Consumer,Tertiary Consumer, Decomposer" {
            self.checkLabel.text = "❌ Incorrect"
        }
        if answerSent == "Primary Consumer,Tertiary Consumer,Secondary Consumer,Producer,Decomposer" {
            self.checkLabel.text = "❌ Incorrect"
            
            
        }
        if answerSent == "Birds eating ticks on rhinos" {
            self.checkLabel.text = "❌ Incorrect"
            
        }
        if answerSent == "Sharks being able to smell blood" {
             self.checkLabel.text = "❌ Incorrect"
            
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
