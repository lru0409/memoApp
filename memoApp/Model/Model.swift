//
//  Model.swift
//  memoApp
//
//  Created by 이로운 on 2022/04/18.
//

import Foundation

class Memo {
    var content: String
    var insertDate: Date
    
    init(content: String) {
        self.content = content
        insertDate = Date()
    }
    
    static var dummyMemoList = [
        Memo(content: "안녕"),
        Memo(content: "하이")
    ]
    
    static var memoSelected : Memo?
}
