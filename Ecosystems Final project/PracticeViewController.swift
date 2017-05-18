//
//  PracticeViewController.swift
//  Ecosystems Final project
//
//  Created by mac pro on 5/18/17.
//  Copyright © 2017 Raamis & Belal. All rights reserved.
//

import UIKit

class PracticeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var PracticeTopics: UITableView!
    
    var practicetabletopics = ["Flow of Energy","Adaptation","Patterns of Interaction","Changes in Population","Biodiversity","Resource Availibility"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let topics = UITableViewCell()
        topics.textLabel?.text = practicetabletopics[indexPath.row]
        return topics
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        PracticeTopics.delegate = self as UITableViewDelegate
        PracticeTopics.dataSource = self as UITableViewDataSource
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
