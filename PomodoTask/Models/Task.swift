//
//  File.swift
//  PomodoTask
//
//  Created by eyüp köse on 12.03.2024.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Task: Identifiable {
    var id: UUID
    var taskTitle: String
    var creationDate: Date
    var isCompleted : Bool
    var tint: String
    
    init(id: UUID = UUID(), taskTitle: String, creationDate: Date = Date(), isCompleted: Bool = false, tint: String) {
        self.id = id
        self.taskTitle = taskTitle
        self.creationDate = creationDate
        self.isCompleted = isCompleted
        self.tint = tint
    }
    
    
    var tintColor: Color{
        switch tint {
        case "taskColor1": return .taskColor1
        case "taskColor2": return .taskColor2
        case "taskColor3": return .taskColor3
        case "taskColor4": return .taskColor4
        case "taskColor5": return .taskColor5
        case "taskColor6": return .taskColor6
        default:
            return .gray
        }
    }
    
}




extension Date {
    static func updateHour(_ value : Int) -> Date{
        let calender = Calendar.current
        return calender.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
}
