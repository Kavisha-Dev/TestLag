//
//  HowToViewController.swift
//  TestLag
//
//  Created by Kavisha on 05/08/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import UIKit

class HowToViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var dataModel: [PlusDataModel] = [PlusDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.backgroundColor
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        dataModel = PlusDataModel.getHowToData()
        
        // Do any additional setup after loading the view.
        
        self.tableView.register(UINib(nibName: "HowToCell", bundle: nil), forCellReuseIdentifier: "howToCellId")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "howToCellId")  as? HowToCell else {
            return UITableViewCell()
        }
        
        let item = dataModel[section].items[indexPath.row]
        if let subImage = item.subImage {
            cell.subImage.image = UIImage(named: subImage)
        } else {
            cell.subImage.image = nil
        }
        
        return cell
        
    }
}
