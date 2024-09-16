import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = []
    var body: some View {
        HeaderView(tasks: $tasks, enteredDueDate: Date())
        List {
            ForEach(tasks, id: \.self) { task in
                Text("\(task.nameOfTask) due on \(task.dueDate.formatted(date: .numeric, time: .shortened))")
            }
        }
    }
}
