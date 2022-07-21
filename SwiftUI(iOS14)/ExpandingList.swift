//
//  ExpandingList.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct ExpandingList: View {
    let courses = Course.getCourses()
    
    var body: some View {
        List(courses, children: \.courses) { lesson in
            Image(systemName: lesson.icon)
            Text(lesson.title)
        }
    }
}

struct Course: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    var courses: [Course]?

}

extension Course {
    static func getCourses() -> [Course] {
        return [
            Course(
                title: "Основы программирования",
                icon: "textformat.abc",
                courses: [
                    Course(title: "Lesson 1", icon: "1.circle"),
                    Course(title: "Lesson 2", icon: "2.circle"),
                    Course(title: "Lesson 3", icon: "3.circle"),
                    Course(title: "Lesson 4", icon: "4.circle")
                ]
            ),
            Course(
                title: "Мои первые приложения",
                icon: "app.badge",
                courses: [
                    Course(title: "Lesson 1", icon: "1.circle"),
                    Course(title: "Lesson 2", icon: "2.circle"),
                    Course(title: "Lesson 3", icon: "3.circle"),
                    Course(title: "Lesson 4", icon: "4.circle")
                ]
            ),
            Course(
                title: "SwiftUI",
                icon: "bolt.fill",
                courses: [
                    Course(title: "Lesson 1", icon: "1.circle"),
                    Course(title: "Lesson 2", icon: "2.circle"),
                    Course(title: "Lesson 3", icon: "3.circle"),
                    Course(title: "Lesson 4", icon: "4.circle")
                ]
            ),
            Course(
                title: "Архитектурные паттерны",
                icon: "rectangle.3.offgrid.fill",
                courses: [
                    Course(title: "Lesson 1", icon: "1.circle"),
                    Course(title: "Lesson 2", icon: "2.circle"),
                    Course(title: "Lesson 3", icon: "3.circle"),
                    Course(title: "Lesson 4", icon: "4.circle")
                ]
            )
        ]
    }
}

struct ExpandingLists_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingList()
    }
}
