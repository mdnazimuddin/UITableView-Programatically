//
//  ViewController.swift
//  ProgramaticallyTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView = UITableView()
    
    var arrayData:[String] = [String]()
    var arrayData1:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        tableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        getData()
        
        view.addSubview(tableView)
    }
    func getData(){
        arrayData = ["Level 1","Level 2","Level 3","Level 4","Level 5","Level 6","Level 7","Level 8","Level 9","Level 10"]
        arrayData1 = ["level 1","level 2","level 3","level 4","level 5","level 6","level 7","level 8","level 9","level 10"]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if !cell.isEqual(nil) {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        cell.textLabel?.text = arrayData[indexPath.row]
        cell.detailTextLabel?.text = arrayData1[indexPath.row]
        return cell
    }
    


}

