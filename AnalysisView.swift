//
//  AnalysisView.swift
//  ShuaTi
//
//  Created by zhangtongxi on 15/4/20.
//  Copyright (c) 2015年 Dream. All rights reserved.
//

import UIKit

class AnalysisView: UIView {
    
    var realHeight: CGFloat {
        get {
            self.layoutIfNeeded()
            var realHeight: CGFloat = 0
            for view in self.subviews {
                realHeight += view.frame.height
            }
            realHeight -= self.noteButton.frame.height
            for verticalSpace in self.verticalSpaces {
                realHeight += verticalSpace.constant
            }
            return realHeight + bottomSpace
        }
    }
}
