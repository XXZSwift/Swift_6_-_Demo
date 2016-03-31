//
//  ViewController.swift
//  Swift_6_函数_Demo
//
//  Created by Jiayu_Zachary on 15/12/23.
//  Copyright © 2015年 Zachary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        buildLayout()
        
//        myFunc(name: "zd", age: 11)
//        myFunc()
//        
//        let name = "xjj"
//        myFunc(name: name, age: 10)
//        
//        print("name = \(name)")
        
//        myFunc(sex: "1", "2", "3") //可变参数, 必须是最后一个参数
        
//        var age = 11
//        myInoutFunc(age: &age, name: "zd")
//        print(age)
//        
//        myInoutFunc(age: &age)
        
        //函数类型 de 变量
        var func1: (String, Int) -> String
        var func2: (String, String) -> String
        
        func1 = cutomFunc1
        func2 = cutomFunc2
        
        let myFunc1 = func1("xxz", 26)
        print("myFunc1 = \(myFunc1)")
        print("myFunc2 = \(func2("zd", "25"))")
        
        //函数类型 de 参数
        customFunc3(func1: func1)
    }
    
    //函数
    // 有无参数(多个参数), 有无返回值(多个返回值), 参数扩展名(扩展参数), 参数默认值
    //可变参数(必须放在参数列表最后), 常量和变量参数, 输入输出参数(inout)
    //函数类型
    
    //函数类型的参数
    func customFunc3(func1 func1:(name:String, age:Int)->String) {
        
        let info = func1(name: "wyg", age: 24)
        
        print("info: \(info)")
    }
    
    func cutomFunc2(name:String = "zd", sex:String = "girl") -> String {
        
        return "name = \(name), sex = \(sex)"
    }
    
    func cutomFunc1(name:String, age:Int) -> String {
        
        return "name = \(name), age = \(age)"
    }
    
    func myInoutFunc (inout age age1:Int, name name1:String = "xxz") {
        print("-----------------------")
        
        print(name1)
        print(age1)
        
        print("-----------------------")
        
        age1++
    }
    
    
    func myFunc (var name name1:String = "xxz", age age1:Int = 16, sex sex1:String...) -> (String, Int) {
        name1 += " zd"
        
        
        print(name1)
        print(age1)
        print(sex1)
        print("-----------")
        
        return (name1, age1)
    }

    //数组,字典
    func buildLayout () {
        //初始化空数组
        var myArr:[Int] = []
        var myArr1:Array<Int> = []
        var myArr2 = [String]()
        var myArr3 = Array(count: 1, repeatedValue: 5) //声明固定长度的可变数组
        
        myArr.insert(0, atIndex: 0)
        myArr.append(1)
        myArr1.append(1)
        myArr1.append(2)
        myArr2.insert("xxz", atIndex: 0)
        myArr2.append("zd")
        myArr3 += [3]
        myArr3 += myArr1
        
        print(myArr)
        print(myArr1)
        print(myArr2)
        print(myArr3)
        
        print("-----------------------------------")
        //初始化空的字典
        var myDict = [String:String]()
        var myDict1 = Dictionary<String, Int>()
        
        myDict["name"] = "xxz"
        myDict1["age"] = 26
        myDict1["sex"] = 1
        
        print(myDict)
        print(myDict1)
        
//        myDict = [:]//清空
        myDict.removeAll() //清空
        print(myDict)
        
        myDict1["age"] = nil //移除指定key对应的值
        print(myDict1)
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

