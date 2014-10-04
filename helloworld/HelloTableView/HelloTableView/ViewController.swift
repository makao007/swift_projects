//
//  ViewController.swift
//  HelloTableView
//
//  Created by maikaowen on 14-10-4.
//  Copyright (c) 2014年 makao007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let tableData = ["Apple", "Google", "IBM", "Facebook"]
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return countElements(tableData)
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        cell.detailTextLabel!.text = tableData[indexPath.row]
        return cell
    }
}

