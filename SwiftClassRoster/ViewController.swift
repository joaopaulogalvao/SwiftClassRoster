//
//  ViewController.swift
//  SwiftClassRoster
//
//  Created by Joao Paulo Galvao Alves on 6/3/15.
//  Copyright (c) 2015 jalvestech. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  var studentIndex = 0
  var studentName: [String] = ["Student1","Student2","Student3","Student4","Student5"]
  
  @IBOutlet weak var labelName: UILabel!
  
  
  
  @IBAction func showNextName(sender: AnyObject) {
    
    
    labelName.text = studentName[studentIndex]
    
    if studentIndex < studentName.count - 1 {
      ++studentIndex
      
    }
    
  }
  
  @IBAction func showPreviousName(sender: AnyObject) {
    
    
    if studentIndex >= studentName.count - 4 {
      labelName.text = studentName[studentIndex - 1]
      --studentIndex
      
    }

  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}


