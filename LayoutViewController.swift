//
//  LayoutViewController.swift
//  tableViewDemo
//
//  Created by Paul L on 10/6/14.
//  Copyright (c) 2014 ICH. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "This is a really long string that should wrap a good ammount so that I can demonstrate how aweome auto layout is, and I hope people like it!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
