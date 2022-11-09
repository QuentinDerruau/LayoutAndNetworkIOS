//
//  CourseMock.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import Foundation

struct CoursesMock {
    
    static func courses() -> [Course] {
        [
            Course(name: "Ruby", hours: 2),
            Course(name: "Go", hours: 4),
            Course(name: "iOS/Android", hours: 25),
            Course(name: "Design", hours: 89),
            Course(name: "PHP", hours: 15),
            Course(name: "Anglais", hours: 52),
            Course(name: "Marketing", hours: 89),
            Course(name: "Product Management", hours: 58),
            Course(name: "UI/UX", hours: 99),
            Course(name: "React", hours: 63),
            Course(name: "CSS/JS", hours: 7)
        ]
    }
}
