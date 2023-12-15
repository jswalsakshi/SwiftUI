//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by sakshi.j on 15/12/23.
//

import SwiftUI
import Foundation

struct ContentView: View {

    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        return dateFormatter
    }()
    
    @State private var dateOfBirth = Date.now
    
    var body: some View {
        VStack {
            DatePicker("Birth Day is on", selection: $dateOfBirth, in: ...Date.now, displayedComponents: .date)
            Text("Date is \(dateOfBirth, formatter: dateFormatter)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
