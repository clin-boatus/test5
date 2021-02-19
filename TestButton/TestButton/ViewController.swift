//
//  ViewController.swift
//  TestButton
//
//  Created by Chris Lin on 5/28/20.
//  Copyright © 2020 Chris Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var testButton: UIButton?
    @IBOutlet private weak var towButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //let font = .preferredFont(forTextStyle: .body)
        let yourAttributes : [NSAttributedString.Key: Any] = [
            //NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14),
            NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .body),
            NSAttributedString.Key.foregroundColor : UIColor.blue,
            NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue]
               //.styleDouble.rawValue, .styleThick.rawValue, .styleNone.rawValue
        
        let attributeString = NSMutableAttributedString(string: "Your button text",
                                                        attributes: yourAttributes)
        //testButton?.setAttributedTitle(attributeString, for: .normal)
        
        testButton?.titleLabel?.font = .preferredFont(forTextStyle: .body)
        testButton?.titleLabel?.adjustsFontForContentSizeCategory = true
        
        
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//        // Get right now as it's `DateComponents`.
//        let now = Calendar.current.dateComponents(in: .current, from: Date())
//
//        // Create the start of the day in `DateComponents` by leaving off the time.
//        let today = DateComponents(year: now.year, month: now.month, day: now.day)
//        let dateToday = Calendar.current.date(from: today)!
//        print(dateToday.timeIntervalSince1970)
//        print("today: \(dateFormatter.string(from: dateToday))")
//
//        // Add 1 to the day to get tomorrow.
//        // Don't worry about month and year wraps, the API handles that.
//        let tomorrow = DateComponents(year: now.year, month: now.month, day: now.day! + 1)
//        let dateTomorrow = Calendar.current.date(from: tomorrow)!
//        print(dateTomorrow.timeIntervalSince1970)
//        print("tomorrow: \(dateFormatter.string(from: dateTomorrow))")
        
        
    }
    
    @IBAction func buttonTapped() {
        let dateFormatter = DateFormatter()
               dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
               
               // Get right now as it's `DateComponents`.
               let now = Calendar.current.dateComponents(in: .current, from: Date())

               // Create the start of the day in `DateComponents` by leaving off the time.
               let today = DateComponents(year: now.year, month: now.month, day: now.day)
               let dateToday = Calendar.current.date(from: today)!
               print(dateToday.timeIntervalSince1970)
               print("today: \(dateFormatter.string(from: dateToday))")

               // Add 1 to the day to get tomorrow.
               // Don't worry about month and year wraps, the API handles that.
               let tomorrow = DateComponents(year: now.year, month: now.month, day: now.day! + 1)
               let dateTomorrow = Calendar.current.date(from: tomorrow)!
               print(dateTomorrow.timeIntervalSince1970)
               print("tomorrow: \(dateFormatter.string(from: dateTomorrow))")
    }

    @objc func uiContentSizeCategoryChanged() {
      /// Handle contentSizeCategoryDidChange, here.
        testButton?.sizeToFit()
    }

}

