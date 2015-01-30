//
//  ViewController.swift
//  tasks
//
//  Created by Steve Rowley on 1/30/15.
//  Copyright (c) 2015 Steve Rowley. All rights reserved.
//

import UIKit

var historyArray:[historyData]=[]
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var table: UITableView!
    @IBOutlet var Display: UILabel!
    @IBOutlet var txtEntry: UITextField!
    @IBAction func ButtonPressed(sender: AnyObject) {
        let textfield=Double((txtEntry.text as NSString).doubleValue)
        let result=textfield*textfield
        Display.text="\(result)"
        historyArray.append(historyData(data: "\(result)"))
        table.reloadData()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return historyArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
          var cell :taskCell = tableView.dequeueReusableCellWithIdentifier("Cell") as taskCell
      cell.cellLabel.text=historyArray[indexPath.row].data
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let task1 = historyData(data: "Task1")
        let task2 = historyData(data: "Task2")
        let task3 = historyData(data: "Task3")
        historyArray=[task1,task2,task3]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

