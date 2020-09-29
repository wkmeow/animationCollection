//
//  ViewController.swift
//  Animations
//
//  Created by Left MacBook Pro 13 on 2020/9/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var arr = [
        "进度条",
        "时间累计",
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.tableFooterView = UIView.init(frame: CGRect.zero)
        // Do any additional setup after loading the view.
    }

    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            let hudVC = HUDViewController(nibName: "HUDViewController", bundle: nil)
            self.navigationController?.pushViewController(hudVC, animated: true)
        }
        if indexPath.row == 1{
            let timeVC = TimeProgressViewController(nibName: "TimeProgressViewController", bundle: nil)
            self.navigationController?.pushViewController(timeVC, animated: true)
        }
    }
}
