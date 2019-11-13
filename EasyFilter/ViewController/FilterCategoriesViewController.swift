//
//  FilterCategoriesViewController.swift
//  EasyFilter
//
//  Created by Apple on 2019/10/29.
//  Copyright © 2019 Nautilus. All rights reserved.
//

import UIKit

class FilterCategoriesViewController: UIViewController {

    let fullScrrenSize = UIScreen.main.bounds.size

    lazy var categoriesSeg: UISegmentedControl = {
        let categories = FilterData().filterCategories
        
        let seg = UISegmentedControl(items: categories)
        
        seg.selectedSegmentIndex = 0
        
        seg.addTarget(self, action: #selector(onSegmentChange(sender: <#T##UISegmentedControl#>)), for: .valueChanged)

        return seg
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func onSegmentChange(sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
