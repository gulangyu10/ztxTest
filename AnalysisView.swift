//
//  AnalysisView.swift
//  ShuaTi
//
//  Created by zhongjchange on 15/4/20.
//  Copyright (c) 2015年 Dream. All rights reserved.
//

import UIKit

class AnalysisView: UIView {

    @IBOutlet weak var answerDetail: UILabel!
    
    @IBOutlet weak var questionDetail: UILabel!
    
    @IBOutlet weak var analysisLabel: UILabel!
    
    @IBOutlet weak var analysisContent: LmlView!
    
    @IBOutlet weak var chapterLabel: UILabel!
    
    @IBOutlet weak var chaptersCollection: UICollectionView!
    
    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var noteButton: UIButton!
    
    @IBOutlet weak var noteContent: UILabel!
    
    @IBOutlet weak var noteImagesTable: UITableView!
    
    @IBOutlet var verticalSpaces: [NSLayoutConstraint]!
    
    private let bottomSpace: CGFloat = 120
    
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
