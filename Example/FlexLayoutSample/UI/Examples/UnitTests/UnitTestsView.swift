//
//  UnitTestsView.swift
//  FlexLayoutSample
//
//  Created by Luc Dion on 2017-07-19.
//  Copyright (c) 2017 Mirego. All rights reserved.
//
import UIKit
import FlexLayout
import PinLayout

class UnitTestsView: BaseView {
    fileprivate let rootFlexContainer = UIView()
    fileprivate let aView = UIView()
    fileprivate let bView = UIView()
    fileprivate let cView = UIView()

    override init() {
        super.init()

//        let imageView = UIImageView(image: UIImage(named: "flexlayout-logo"))
//        
//        let segmentedControl = UISegmentedControl(items: ["Intro", "FlexLayout", "PinLayout"])
//        segmentedControl.selectedSegmentIndex = 0
//        
//        let label = UILabel()
//        label.text = "Flexbox layouting is simple, powerfull and fast.\n\nFlexLayout syntax is concise and chainable."
//        label.numberOfLines = 0
//        
//        let bottomLabel = UILabel()
//        bottomLabel.text = "FlexLayout/yoga is incredibly fast, its even faster than manual layout."
//        bottomLabel.numberOfLines = 0
        
        rootFlexContainer.backgroundColor = .lightGray
        aView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        bView.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
        cView.backgroundColor = UIColor.green.withAlphaComponent(0.5)
        
//        rootFlexContainer.flex.define { (flex) in
//            flex.addContainer().direction(.row).define { (flex) in
//                flex.addItem(imageView).width(100).aspectRatio(of: imageView)
//                
//                flex.addContainer().paddingLeft(12).grow(1).define { (flex) in
//                    flex.addItem(segmentedControl).marginBottom(12).grow(1)
//                    flex.addItem(label)
//                }
//            }
//            
//            flex.addContainer().height(1).marginTop(12).backgroundColor(.lightGray)
//            flex.addItem(bottomLabel).marginTop(12)
//        }
        
        addSubview(rootFlexContainer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        rootFlexContainer.frame = CGRect(x: 0, y: 84, width: 400, height: 400)
        
//        rootFlexContainer.flex.define { (flex) in
//        }
//        expect(rootFlexContainer.frame).to(equal(CGRect(x: 0.0, y: 84.0, width: 400.0, height: 400.0)))

//        rootFlexContainer.flex.define { (flex) in
//            flex.addItem(aView).grow(1)
//        }
//        expect(aView.frame).to(equal(CGRect(x: 0.0, y: 0.0, width: 400.0, height: 400.0)))

//        rootFlexContainer.flex.define { (flex) in
//            flex.addItem(aView).grow(1).marginLeft(10)
//        }
//        expect(aView.frame).to(equal(CGRect(x: 10.0, y: 0.0, width: 390.0, height: 400.0)))

        rootFlexContainer.flex.define { (flex) in
            flex.addItem(aView).grow(1).marginLeft(10)
        }
//        expect(aView.frame).to(equal(CGRect(x: 10.0, y: 0.0, width: 390.0, height: 400.0)))

        
        rootFlexContainer.flex.layout()
//        printViewFrame(rootFlexContainer, name: "rootFlexContainer")
        printViewFrame(aView, name: "aView")
    }
    
    fileprivate func printViewFrame(_ view: UIView, name: String) {
        print("expect(\(name).frame).to(equal(CGRect(x: \(view.frame.origin.x), y: \(view.frame.origin.y), width: \(view.frame.size.width), height: \(view.frame.size.height))))")
    }
}
