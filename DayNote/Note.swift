//
//  Note.swift
//  DayNote
//
//  Created by 李嘉晟 on 2017/5/25.
//  Copyright © 2017年 李嘉晟. All rights reserved.
//

import Foundation

class Note{
    var day = ""
    var weekday = ""
    var noteContent = ""
    var time = ""
    var location = ""
    
    init(day:String, weekday:String, noteContent:String, time: String, location: String) {
        self.day = day
        self.weekday = weekday
        self.noteContent = noteContent
        self.time = time
        self.location = location
    }
    
}
