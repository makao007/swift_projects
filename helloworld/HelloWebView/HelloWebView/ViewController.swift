//
//  ViewController.swift
//  HelloWebView
//
//  Created by maikaowen on 14-10-2.
//  Copyright (c) 2014年 makao007. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string: "http://www.baidu.com")
        let request = NSURLRequest(URL: url)
        self.myWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

