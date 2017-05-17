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
    
    var question1 = "Which is the order of the flow of energy in an energy pyramid from bottom to top?"
    var answers1 = ["Primary Consumer,Tertiary Consumer,Secondary Consumer,Producer,Decomposer","Producer,Primary Consumer,Secondary Consumer,Tertiary Consumer,Decomposer.", "Producer,Secondary Consumer,Tertiary Consumer, Decomposer"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TableView1.dataSource = self
        TableView1.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = answers1[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

