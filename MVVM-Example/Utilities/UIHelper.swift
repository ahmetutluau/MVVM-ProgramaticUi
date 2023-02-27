//
//  UIHelper.swift
//  MVVM-Example
//
//  Created by MAC on 16.10.2022.
//

import Foundation
import UIKit

enum UIHelper {
    static func  createHomeFlowLayout() -> UICollectionViewFlowLayout {
       let layout = UICollectionViewFlowLayout()
        
        let itemWidth = CGFloat.dWidth
        
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.5)
        layout.minimumLineSpacing = 40
        
        return layout
    }
}
