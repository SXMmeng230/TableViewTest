//
//  FirstViewController.swift
//  TableViewTest
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 yueDi. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var tableview: UITableView!
    var tiName:String?
    var titleArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        title = tiName
        titleArray = ["张三","李四","王五","赵六"]
        tableview.registerNib(UINib(nibName: "FirstTableViewCell", bundle:nil), forCellReuseIdentifier: "firstCell")
        // Do any additional setup after loading the view.
    }
    //MARK: - 内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
//MARK:- 扩展
extension FirstViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("firstCell", forIndexPath: indexPath) as! FirstTableViewCell
        if indexPath.row % 2 == 0 {
          cell.imageView?.image = UIImage.init(named: "fenmian_tengTong_6")
        }else {
          cell.imageView?.image = UIImage.init(named: "fenmian_allScore_rank1")
        }
//        cell.titleNameLabel.text = "这个第\(indexPath.row)下标"
        cell.titleNameLabel.text = titleArray[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }

}
