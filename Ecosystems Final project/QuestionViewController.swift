//
//  QuestionViewController.swift
//  Ecosystems Final project
//
//  Created by mac pro on 5/17/17.
//  Copyright © 2017 Raamis & Belal. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var Question: UILabel!
    
    @IBOutlet weak var ChoicesTable: UITableView!
    
    var answers1 = ["Primary Consumer,Tertiary Consumer,Secondary Consumer,Producer,Decomposer","Producer,Primary Consumer,Secondary Consumer,Tertiary Consumer,Decomposer.", "Producer,Secondary Consumer,Tertiary Consumer, Decomposer"]
    
    
    var answers2 = ["Birds eating ticks on rhinos","Sharks being able to smell blood","A plant growing to the side to get sunlight"]
    
    var displayquestion = "NO QUESTION"

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let choices = UITableViewCell()
    
        if displayquestion == "Which is the order of the flow of energy in an energy pyramid from bottom to top" {
            
            choices.textLabel?.text = answers1[indexPath.row]
            
        
        }
        if displayquestion == "Which would be considered an adaptation?" {
            
            choices.textLabel?.text = answers2[indexPath.row]
        }
    
        return choices

        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if 
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ChoicesTable.dataSource = self
        ChoicesTable.delegate = self
        Question.text = displayquestion

    
        
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
