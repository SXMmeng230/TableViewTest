//
//  ViewController.swift
//  TableViewTest
//
//  Created by mac on 15/12/23.
//  Copyright © 2015年 yueDi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var tableArray = [String]()
        {
        didSet{
          tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "首页"
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "indetifi")
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK: - 第一种方式加载tableview
    /*
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
     {
       return 20
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("indetifi")!;
        cell.textLabel?.text = "这个是第\(indexPath.row)"
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("点击\(indexPath.row)")
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let vc = FirstViewController()
        vc.tiName = "点击\(indexPath.row)"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
//MARK: - 第二种方式加载tableview
extension ViewController:UITableViewDataSource,UITableViewDelegate{

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("indetifi")!;
        cell.textLabel?.text = "这个是第\(indexPath.row)"
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("点击\(indexPath.row)")
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let vc:FirstViewController = self.storyboard?.instantiateViewControllerWithIdentifier("firstViewController") as! FirstViewController
        vc.tiName = "点击\(indexPath.row)"
        self.navigationController?.pushViewController(vc, animated: true)

    }
}


