//
//  MeetingRoomListViewController.swift
//  Rooms
//
//  Created by Jung Ho Chu on 2018. 1. 29..
//  Copyright © 2018년 Jung Ho Chu. All rights reserved.
//

import UIKit

class MeetingRoomListViewController: UITableViewController {

    
    var meetingRooms    :   [String:Int] = ["Bansky":4, "Rivera":8, "Kahlo":8, "Picasso":10, "Cezanne":20, "Matisse":30, "Renoir":40]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        //section의 개수는 하나
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meetingRooms.count
        // row의 개수는 회의실의 개수
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        //reuseIdentifier || cell의 identifier로 MyCEll을 입력함.
        // cell identifier는 어떤 셀을 이용할 것인지 코드에 알려주는 이름, 이 이름은 storoboard에서 지정한다.
        
        let roomNames = Array(meetingRooms.keys)
        // 회의실의 이름들을 배열로 저장
        let roomName = roomNames[indexPath.row]
        //indexPath의 row 프로퍼티를 사용하여 cell이 몇번쨰 row인지 확인,
        cell.textLabel!.text = roomName
        // 위의 roomName을 이용하여 각 Cell의 순서에 맞게 회의실의 데이터를 넣어준다.
        // textLabel에는 회의실의 이름,
        
        if let capacity:Int = meetingRooms[roomName]
        {
            cell.detailTextLabel!.text = "\(capacity)"
            //detailTextLabel에는 회의실의 수용 인원을 넣어준다.
        }


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
