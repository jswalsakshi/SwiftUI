
  
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()

    @State private var birthDate = Date.now

    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                Text("Select a date")
            }
            .datePickerStyle(GraphicalDatePickerStyle())
            .frame(maxHeight: 500)

            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

