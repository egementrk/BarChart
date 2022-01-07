//
//  ViewController.swift
//  BarChart
//
//  Created by Egemen on 7.01.2022.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate{

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width)
        barChart.center = view.center
        view.addSubview(barChart)
        
        var entries = [BarChartDataEntry]()
        for x in 0..<20{
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData (dataSet: set)
        barChart.data = data
    }

}

