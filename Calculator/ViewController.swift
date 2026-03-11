//
//  ViewController.swift
//  Calculator
//
//  Created by Michael Peralta on 3/8/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorWorkings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!

    var workings: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func clearAll() {
        workings = ""
        calculatorResults.text = "0"
        calculatorWorkings.text = ""
    }

    @IBAction func allClearTap(_ sender: UIButton) {
        clearAll()
    }

    @IBAction func backTap(_ sender: UIButton) {
        if !workings.isEmpty {
            workings.removeLast()
            calculatorWorkings.text = workings
        }
    }

    @IBAction func equalsTap(_ sender: UIButton) {
        if validInput() {
            let checkWorkingsforPercent = workings.replacingOccurrences(
                of: "%",
                with: "*0.01"
            )
            let expression = NSExpression(format: checkWorkingsforPercent)

            let result =
                expression.expressionValue(
                    with: nil,
                    context: nil
                ) as! Double
            let resultString = formatResult(result)
            calculatorResults.text = resultString
            calculatorWorkings.text = ""
            workings = ""

        } else {
            let alert = UIAlertController(
                title: "Invalid Input",
                message: "Calculator unable to do math based on input",
                preferredStyle: .alert
            )
            alert.addAction(
                UIAlertAction(
                    title: "Okay",
                    style: .default,
                    handler: nil
                )
            )
            self.present(alert, animated: true, completion: nil)
        }
    }

    func validInput() -> Bool {
        var count = 0
        var funcChartIndexes = [Int]()
        
        for char in workings {
            if(specialCharacterCheck(for: char)) {
                funcChartIndexes.append(count)
            }
            count += 1
        }
        
        var previous: Int = -1
        
        for index in funcChartIndexes {
            if(index == 0){
                return false
            } else if(index == workings.count - 1){
                return false
            }else if(previous != -1){
                if(index - previous == 1){
                    return false
                }
            }
            previous = index
        }
        return true
    }
    
    func specialCharacterCheck(for char: Character) -> Bool {
        switch char {
        case "*":
            return true
        case "/":
            return true
        case "+":
            return true
        case "-":
            return true
        default:
            return false
        }
    }

    func formatResult(_ result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1)) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)

        }
    }

    func addToworkings(value: String) {
        workings = workings + value
        calculatorWorkings.text = workings
    }

    @IBAction func percentTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)
    }

    @IBAction func divideTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }

    @IBAction func timesTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }

    @IBAction func minusTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }

    @IBAction func plusTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }

    @IBAction func decimalTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func oneTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func twoTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func threeTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func fourTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func fiveTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func sixTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func sevenTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func eightTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
    @IBAction func nineTap(_ sender: UIButton) {
        guard let pressedValue = sender.currentTitle else {
            fatalError("No value")
        }
        addToworkings(value: pressedValue)

    }
}
