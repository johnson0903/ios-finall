//
//  TimelineTableViewController.swift
//  DayNote
//
//  Created by 李嘉晟 on 2017/5/25.
//  Copyright © 2017年 李嘉晟. All rights reserved.
//

import UIKit
class TimelineTableViewController: UITableViewController {
    
    var notes:[Note] = [Note(day: "25", weekday: "Thu", noteContent: "嗨今天禮拜四，端午節假期過了", time: "15:32", location: "NTNTUTNTUT"), Note(day: "25", weekday: "Thu", noteContent: "test2kdf;ajfkdl;asfjdfj;dfja;fkdl;fjlsadfjdfjlkdaf;adfajksfljadfl;jas;fjdkasfj;dfjals;fjdls;fjkl;safjld;sjfk;afljad;", time: "15:32", location: "NTUT"), Note(day: "25", weekday: "Thu", noteContent: "test3", time: "15:32", location: "NTUT"), Note(day: "25", weekday: "Thu", noteContent: "test4", time: "15:32", location: "NTUT"), Note(day: "25", weekday: "Thu", noteContent: "test5", time: "15:32", location: "NTUT")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return notes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell", for: indexPath) as! TimelineTableViewCell

        // Configure the cell...
        cell.dayLabel.text = notes[indexPath.row].day
        cell.weekDayLabel.text = notes[indexPath.row].weekday
        cell.noteTitleLabel.text = notes[indexPath.row].noteContent
        cell.timestampLabel.text = notes[indexPath.row].time
        cell.locationstampLabel.text = notes[indexPath.row].location
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
