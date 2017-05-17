//
//  ViewController.swift
//  Ecosystems Final project
//
//  Created by mac pro on 5/17/17.
//  Copyright © 2017 Raamis & Belal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var TableView1: UITableView!
    var questionTopics = ["Flow of Energy","Adaptation","Patterns of Interaction","Changes in Population","Biodiversity","Resource Availibility"]
    var questions = ["Which is the order of the flow of energy in an energy pyramid from bottom to top","Which would be considered an adaptation?","Which is correct in the following?"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TableView1.dataSource = self
        TableView1.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = questionTopics[indexPath.row]
        cell.textLabel!.font = UIFont(name: cell.textLabel!.font.fontName, size:20)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let question = questions[indexPath.row]
        performSegue(withIdentifier: "QuestionSegue", sender: question)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let QVC = segue.destination as! QuestionViewController
        
        QVC.displayquestion = sender as! String
        
        
        
       
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

