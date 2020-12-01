//
//  DictionaryExtensionViewController.swift
//  JKSwiftExtension_Example
//
//  Created by IronMan on 2020/11/4.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class DictionaryExtensionViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        headDataArray = ["一、基本的扩展"]
        dataArray = [["检查字典里面是否有某个 key", "字典的key或者value组成的数组", "JSON字符串 -> 字典", "字典 -> JSON字符串", "字典里面所有的 key", "字典里面所有的 value"]]
    }

}

// MARK:- 一、基本的扩展
extension DictionaryExtensionViewController {
    
    // MARK: 1.5、字典里面所有的 values
    @objc func test16() {
        let dictionary = ["b": "2", "a": "1"]
        JKPrint("字典里面所有的 values", "字典：\(dictionary) 的所有values为：\(dictionary.allValues())")
    }
    
    // MARK: 1.5、字典里面所有的 key
    @objc func test15() {
        let dictionary = ["b": "2", "a": "1"]
        JKPrint("字典里面所有的 keys", "字典：\(dictionary) 的所有keys为：\(dictionary.allKeys())")
    }
    
    // MARK: 1.4、字典 -> JSON字符串
    @objc func test14() {
        let dictionary = ["a": "1", "b": "2"]
        guard let json = dictionary.toJSON() else {
            return
        }
        JKPrint("字典 -> JSON字符串", "字典：\(dictionary) 转JSON字符串后为：\(json)")
    }
    
    // MARK: 1.3、JSON字符串 -> 字典
    @objc func test13() {
       let dictionary = ["a": "1", "b": "2"]
        guard let json = dictionary.toJSON(), let newDictionary = json.jsonStringToDictionary() else {
            return
        }
        JKPrint("JSON字符串 -> 字典", "JSON字符串：\(json) 转为字典为：\(newDictionary)")
    }
    
    // MARK: 1.2、字典的key或者value组成的数组
    @objc func test12() {
        let dictionary = ["a": "1", "b": "2"]
        let array = dictionary.toArray { (key, value) -> String in
            return key
        }
        JKPrint("字典的key或者value组成的数组", "字典 \(dictionary) 的key组成的数组是：\(array)")
    }
    
    // MARK: 1.1、检查字典里面是否有某个 key
    @objc func test11() {
        let dictionary = ["a": "1", "b": "2"]
        let key = "c"
        JKPrint("检查字典里面是否有某个 key", "检查字典\(dictionary) 里面有没有键：\(key) ，结果是：\(dictionary.has(key))")
    }
}
