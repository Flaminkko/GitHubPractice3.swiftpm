import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = [Task(nameOfTask: "Mow the Lawn"), Task(nameOfTask: "Feed the Dog"), Task(nameOfTask: "Grocery Shop")]
    var body: some View {
        List {
            ForEach(tasks, id: \.self) { task in
                Text(task.nameOfTask)
            }
        }
    }
}
