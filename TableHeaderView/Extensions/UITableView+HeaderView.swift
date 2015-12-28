//
//  UITableView+HeaderView.swift
//  AutoLayout
//
//  Created by Kiet Nguyen on 12/28/15.
//  Copyright © 2015 Kiet Nguyen. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    func sizeHeaderToFit() {
        guard let headerView = self.tableHeaderView else {
            return
        }
        
        headerView.setNeedsLayout()
        headerView.layoutIfNeeded()
        
        let height = headerView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height
        var headerFrame = headerView.frame
        headerFrame.size.height = height
        headerView.frame = headerFrame
        
        self.tableHeaderView = headerView
    }
}
