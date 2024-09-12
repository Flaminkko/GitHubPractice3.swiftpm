import SwiftUI

struct ContentView: View {
    @State var tasks = ["Mow the Lawn", "Feed the Dog", "Grocery Shop"]
    var body: some View {
        List {
            ForEach(tasks, id: \.self) { task in
                Text(task)
            }
        }
    }
}
