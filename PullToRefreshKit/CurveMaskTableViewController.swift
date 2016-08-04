//
//  CurveMaskTableViewController.swift
//  PullToRefreshKit
//
//  Created by huangwenchen on 16/8/4.
//  Copyright © 2016年 Leo. All rights reserved.
//

import Foundation
import UIKit

class CurveMaskTableViewController:BaseTableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup
        let curveHeader = CurveRefreshHeader(frame: CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 0))
        self.tableView.setUpHeaderRefresh(curveHeader) { [weak self] in
            delay(1.5, closure: {
                self?.models = (self?.models.map({_ in random100()}))!
                self?.tableView.reloadData()
                self?.tableView.endHeaderRefreshing(delay: 0.5)
            })
        }
        //        self.tableView.beginHeaderRefreshing()
    }
}