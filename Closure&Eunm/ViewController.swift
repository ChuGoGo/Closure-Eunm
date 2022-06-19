//
//  ViewController.swift
//  Closure&Eunm
//
//  Created by Chu Go-Go on 2022/6/12.
//

import UIKit

class ViewController: UIViewController {
//    建立一個藥頭他賣古柯鹼
    var dealer = DrugDealer.cocaine
    var label: UILabel {
        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 300, height: 200))
        label.text = useClosure(num: 1, closure: { num, text in
            return"\(num)\(text)"
        })
        label.textColor = .orange
        label.numberOfLines = 0
        label.backgroundColor = .brown
        label.contentMode = .right
        return label
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        //印出他的rawValue，以及func的回傳
//        print("癮君子買了\(dealer.rawValue)\(buyDrug(drug: .cocaine))")

//        先帶入5，使用closure帶入()in
//        useClosure(num: 5) {() in
////           看他的順序
//            print("先經過我")
////            用return回傳10
//            return 10
//        }
//        直接回傳20
//        useClosure(num: 5) {
//            20
//        }
//        複雜一點
//        useClosure(num: 5) {num1,text in
//            let num1 = Int.random(in: 1...10)
//            let num2 = 20
//            let num3 = num1 * num2
//            print("num1:\(num1)\nnum2:\(num2)\nnum3:\(num3)")
//            if num3 > 30{
//                return print(11111)
//            }else{
//                return print(55555)
//            }
         
//        }
//        簡化＄代替
        useClosure(num: 6) {
             "\($0)\($1)"
        }
    }
//    定義一個func，以及一個回傳Int的Closure
    func useClosure(num:Int,closure:(Int,String)->String)->String{
        for i in 0...num{
            print(closure(i,dealer.rawValue))
           
        }
        return  closure(num,dealer.rawValue)
//        建立一個number來裝入num以及closure()加入的值
//      let number = num + closure()
//        把number值印出來
//        print(num)
    }

}

