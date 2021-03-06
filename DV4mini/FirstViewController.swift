//
//  FirstViewController.swift
//  DV4mini
//
//  Created by David on 11/20/16.
//  Copyright © 2016 David Bankston. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var pageControl: UIPageControl!
    
    @IBOutlet weak var pickerView: UIPickerView!
    var pickerDataSource = ["A", "B", "C"];
     override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource [row]
        
}
}
