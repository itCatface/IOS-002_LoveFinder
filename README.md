# 示例002、相亲(控件介绍)

- <a target="_blank" href="http://www.imooc.com/view/173">课程地址(幕课网-使用 Swift 开发第一章) </a>

- <a target="_blank" href="https://github.com/itCatface/IOS-002_LoveFinder">代码地址(Github) </a>

- 关键代码


	- 绑定相关视图控件

			@IBOutlet weak var name: UITextField! 
			...
			
	---
	---
	
	- 点击下一项，关闭键盘

			选中控件，右侧面板中 Return Key 选择 Next
		
		---
		
			// ViewController 实现 UITextFieldDelegate 协议，完成方法
			func textFieldShouldReturn(textField: UITextField) -> Bool {
		        textField.resignFirstResponder()
		        return true
		    }
		    
	---
	---
	
	- UISlider 控件的事件

			@IBAction func heightChanged(sender: AnyObject) {
		        
		        height.text = "\(Int(heightNum.value))cm"
		        
		    }
		    
	---
	---
	
	- 点击确定，提交数据事件

		    @IBAction func btnOk(sender: AnyObject) {
		        
		        // 性别
		        let gender = sex.selectedSegmentIndex == 0 ? "高富帅" : sex.selectedSegmentIndex == 1 ? "白富美" : "人妖"
		        
		        // 年龄
		        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
		        let now = NSDate()
		        let components = gregorian?.components(NSCalendarUnit.Year, fromDate: birthday.date, toDate: now, options: NSCalendarOptions(rawValue: 0))
		        let age = components?.year
		        
		        // 房产
		        let hasHouseText = hasHouse.on ? "有房" : "没放"
		        
		        
		        result.text = "\(name.text!), \(age!)岁, \(gender)性, 身高\(height.text!)cm, \(hasHouseText), 求交往！"
		        
		    }
		
		

	
		

