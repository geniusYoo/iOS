//
//  RealmTest.swift
//  RealmDemo
//
//  Created by 유영재 on 2022/08/18.
//

import Foundation
import RealmSwift

class UserDiary: Object {
    @Persisted var content: String? // 내용
    @Persisted var writeDate = Date() // 날짜
    @Persisted var registerDate = Date() // 등록일
    @Persisted var emotion: String? // 감정
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    convenience init(content: String?, writeDate: Date, registerDate: Date, emotion: String?) {
        self.init()
        self.content = content
        self.writeDate = writeDate
        self.registerDate = registerDate
        self.emotion = emotion
    }
}
