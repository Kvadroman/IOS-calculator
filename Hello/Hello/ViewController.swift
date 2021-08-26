//
//  ViewController.swift
//  Hello
//
//  Created by Ивченко Антон on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen:Double = 0
    var firsNum:Double = 0
    var operation:Int = 0
    var mathSign:Bool = false
    
    
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firsNum = Double(result.text!)!
            if sender.tag == 11 { // Деление}
                result.text = "/"
            } else if sender.tag == 12 { // Умножение
                result.text = "x"
            } else if sender.tag == 13 { // Вычитание
                result.text = "-"
            } else if sender.tag == 14 { // Добавление
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
                }
        else if sender.tag == 15 {// Посчитать всё
            if operation == 11 {
                result.text = String(firsNum / numberFromScreen)
            }
            else if operation == 12 {
                result.text = String(firsNum * numberFromScreen)
            }
            if operation == 13 {
                result.text = String(firsNum - numberFromScreen)
                
            }
            if operation == 14 {
                result.text = String(firsNum + numberFromScreen)
        }
        }
        else if sender.tag == 10 {
            result.text = ""
            firsNum = 0
            numberFromScreen = 0
            operation = 0
        }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


