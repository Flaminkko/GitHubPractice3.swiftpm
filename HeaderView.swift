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
    @State var addDate = true
    var body: some View {
        VStack{
            TextField("Enter a task here", text: $enteredString)
                .frame(width: .infinity, height: 50)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            HStack{
                Spacer()
                Button(action: {
                    addDate.toggle()
                }, label: {
                    Image(systemName: addDate ? "checkmark.square" : "xmark.square")
                        .font(.title)
                })
            DatePicker("Enter due date", selection: $enteredDueDate)
                    .disabled(!addDate)
                    .foregroundStyle(addDate ? .black : .gray)
            Spacer()
        }
            Rectangle().foregroundStyle(.background).frame(maxWidth:10,maxHeight: 20)
            HStack{
                Rectangle().foregroundStyle(.background).frame(maxWidth:40,maxHeight: 0)
                
                Button(action: {
                    submit()
                }, label: {
                    Text("Add Task")
                })
                .frame(maxWidth: .infinity, maxHeight: 33)
                .background(.cyan)
                .foregroundColor(.black)
                .cornerRadius(7)
                
                Rectangle().foregroundStyle(.background).frame(maxWidth:40,maxHeight: 0)
            }
            
    }
    }
    func submit() {
        tasks.append(Task(nameOfTask: enteredString, dueDate: addDate ?  enteredDueDate : nil))
        enteredString = ""
    }
}
