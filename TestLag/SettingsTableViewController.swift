//
//  SettingsTableViewController.swift
//  TestLag
//
//  Created by Kavisha on 05/08/20.
//  Copyright © 2020 Kavisha. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    private var appData = ["Unlock Qwote Plus","Qwote Watermark","How Qwote Works"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.backgroundColor
        self.tableView.separatorStyle = .none
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        // Gives UITableViewCells a selected color by setting on the selectedBackgroundView property
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.lightBackgroundColor
        
        let cell = super.tableView(tableView, cellForRowAt: indexPath)
        cell.backgroundColor = UIColor.backgroundColor
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = appData[row]
        cell.selectedBackgroundView = backgroundView
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.clickedInTableViewRow(indexPath)
    }
    
    
    func clickedInTableViewRow(_ indexPath: IndexPath) {
        
        switch indexPath.section {
            
        case 0 :
            switch indexPath.row {
                
            case 0: openSamplePage()
                
            case 1: openSamplePage()
                
            case 2: openHowToPage()
                
            default: break
                
            }
        default: ()
        }
    }
    
    private func openSamplePage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "sampleViewControllerId") as? SampleViewController
        guard let showVC = vc else { return }
        
        // Settings page is inside a navcontroller. So most likely it will be pushed!
        navigationController?.pushViewController(showVC, animated: true)
    }
    
    private func openHowToPage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "howToViewControllerId") as? HowToViewController
        guard let showVC = vc else { return }
        
        // Settings page is inside a navcontroller. So most likely it will be pushed!
        navigationController?.pushViewController(showVC, animated: true)
    }
    
}

extension UIColor {
    
    public static var backgroundColor: UIColor {
        return UIColor(red:0.10, green:0.12, blue:0.16, alpha:1.0)
    }
    
    public static var lightBackgroundColor: UIColor {
        return UIColor(red:0.18, green:0.20, blue:0.28, alpha:1.0)
    }
}
