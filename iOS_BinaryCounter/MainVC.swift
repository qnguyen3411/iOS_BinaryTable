//
//  MainVC.swift
//  iOS_BinaryCounter
//
//  Created by Quang Nguyen on 9/8/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var currValue = 0
    
    @IBOutlet weak var binaryTableView: UITableView!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "Total: \(currValue)"
        
        binaryTableView.dataSource = self
        binaryTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell",
                                                 for: indexPath) as! BinaryCell
        
        let cellValue = 1 * pow(10, indexPath.row)
        print(cell)
        
        cell.numberLabel.text = "\(cellValue)"
        cell.numValue = (cellValue as NSDecimalNumber).intValue
        cell.delegate = self
        
        return cell

    }
    
    
}

extension MainVC: BinaryCellDelegate {
    func minusButtonPressed(by cell: BinaryCell) {
        currValue -= cell.numValue
        print(currValue)
        numberLabel.text = "Total: \(currValue)"
    }
    
    func plusButtonPressed(by cell: BinaryCell) {
        currValue += cell.numValue
        print(currValue)
        numberLabel.text = "Total: \(currValue)"
    }
}

