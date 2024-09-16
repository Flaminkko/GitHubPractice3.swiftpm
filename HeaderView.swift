//
//  HeaderView.swift
//  GitHubPractice3
//
//  Created by Yewon Park on 9/12/24.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]
    @State var enteredString = ""
    @State var enteredDueDate: Date
    var body: some View {
        HStack {
            TextField("Enter a task here", text: $enteredString)
                .frame(width: .infinity, height: 50)
                .padding()
                .textFieldStyle(.roundedBorder)
            DatePicker("Enter due date", selection: $enteredDueDate)
            Button(action: {
                var taskString = Task(nameOfTask: enteredString, dueDate: enteredDueDate)
                tasks.append(taskString)
            }, label: {
                Text("Add Task")
            })
            .frame(width: 100, height: 33)
            .background(.cyan)
            .foregroundColor(.black)
            .cornerRadius(7)
        }
    }
}
