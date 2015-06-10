//
//  ViewController.swift
//  SwiftClassRoster
//
//  Created by Joao Paulo Galvao Alves on 6/3/15.
//  Copyright (c) 2015 jalvestech. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
  
  var studentIndex = -1
  var studentName: [String] = ["Student1","Student2","Student3","Student4","Student5", "Student6"]
  
  @IBOutlet weak var labelName: UILabel!
  
  
  
  @IBAction func showNextName(sender: AnyObject) {
    
    
    if studentIndex >= -1  && studentIndex < studentName.count - 1 {
      ++studentIndex
      println(studentIndex)
      labelName.text = studentName[studentIndex]
      
    }
    
    if studentIndex == studentName.count - 1 {
      labelName.text = studentName[studentIndex]
      studentIndex = -1
    }
  }
  
  @IBAction func showPreviousName(sender: AnyObject) {
    
    
    if studentIndex > 0 {
      
      --studentIndex
      println(studentIndex)
      labelName.text = studentName[studentIndex]
      
    } else if studentIndex == 0 {
      studentIndex = studentName.count - 1
      labelName.text = studentName[studentIndex]
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


