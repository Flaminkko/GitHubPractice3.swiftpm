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
    
    var body: some View {
        HStack {
            TextField("Enter a task here", text: $enteredString)
                .frame(width: .infinity, height: 50)
                .padding()
                .textFieldStyle(.roundedBorder)
            Button(action: {
                var taskString = Task(nameOfTask: enteredString)
                tasks.append(taskString)
            }, label: {
                Text("Add Task")
            })
            .frame(width: 200, height: 100)
            .background(.cyan)
            .foregroundColor(.white)
        }
    }
}
