//
//  ViewController.swift
//  LoveFinder
//
//  Created by Fashion on 16/7/6.
//  Copyright © 2016年 catface. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var sex: UISegmentedControl!
    
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    
    @IBOutlet weak var heightNum: UISlider!
    
    
    @IBOutlet weak var height: UILabel!
    
    
    @IBOutlet weak var hasHouse: UISwitch!
    
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 绑定代理
        name.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func heightChanged(sender: AnyObject) {
        
        
        let slider = heightNum.value
        height.text = "\(Int(slider))cm"
        
//        var slider = sender as? UISlider
//        height.text = "\(slider!.value)cm"
        
//        height.text = "\(Int(sender.value))cm"
        
    }

    @IBAction func btnOk(sender: AnyObject) {
        
        let gender = sex.selectedSegmentIndex == 0 ? "高富帅" : sex.selectedSegmentIndex == 1 ? "白富美" : "人妖"
        
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        
        let now = NSDate()
        let components = gregorian?.components(NSCalendarUnit.Year, fromDate: birthday.date, toDate: now, options: NSCalendarOptions(rawValue: 0))
        
        let age = components?.year
        
        let hasHouseText = hasHouse.on ? "有房" : "没放"
        
        
        result.text = "\(name.text!), \(age!)岁, \(gender)性, 身高\(height.text!)cm, \(hasHouseText), 求交往！"
        
        
    }
    
    // UITextFieldDelegate
    // 当用户点击下一项时，键盘关闭
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

