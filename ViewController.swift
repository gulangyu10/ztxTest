//
//  ViewController.swift
//  TestFunc
//
//  Created by zhangtongxi on 15/9/21.
//  Copyright © 2015年 追梦网络. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s = urlByAppendingPath("hhh")
//
//        print(s)
        
        let documentsDirectoryURL: NSURL = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
        let fullURL = documentsDirectoryURL.URLByAppendingPathComponent("SearchImage")
        print(fullURL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func urlByAppendingPath(s:String?) -> String {
        
        let url = NSURL(fileURLWithPath: s!)
        
        let result =  url.URLByAppendingPathComponent(s!)
        
        return result.description
    }

}

