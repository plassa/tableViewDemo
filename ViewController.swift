//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Paul L on 10/5/14.
//  Copyright (c) 2014 ICH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var users: [[String:String]]!
    var isExpanded: [Int:Bool]! = [Int:Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        users = [["name" : "Paul Lassa" , "hometown" : "Chicago, IL"],
            ["name" : "Palmyra" , "hometown" : "Glen Ellyn, IL"],
            ["name" : "Olivia" , "hometown" : "Cupertino, CA"],
            ["name" : "Henry" , "hometown" : "Cupertino, CA"],
            ["name" : "Owen" , "hometown" : "Cupertino, CA"],
            ["name" : "Fred" , "hometown" : "Cupertino, CA"]]

        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableViewAutomaticDimension

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let expanded = isExpanded[section] {
            return expanded ? users.count : 1
        } else {
            return 1
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 10
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("UserCell") as UserCell
        
        var user = users[indexPath.row]
        
        cell.nameLabel.text = user["name"]
        cell.hometownLabel.text = user["hometown"]
        
        return cell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var headerView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        headerView.backgroundColor = UIColor(white: 0.8, alpha: 0.8)
        
        var headerLabel = UILabel(frame: CGRect(x: 10, y: 0, width: 320, height: 50))
        headerLabel.text = "Section \(section)"
        headerView.addSubview(headerLabel)
        
        return headerView
    
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
        if let expanded = isExpanded[indexPath.section] {
            isExpanded[indexPath.section] = !expanded
            //println("expanded: \(expanded)")
        } else {
            isExpanded[indexPath.section] = true
            //println("expanded: \(isExpanded[indexPath.section])")
        }
        
        println("expanded: \(isExpanded[indexPath.section])")
        
        tableView.reloadSections(NSIndexSet(index:indexPath.section), withRowAnimation: UITableViewRowAnimation.Fade)
    }
    
}

