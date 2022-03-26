//
//  ContentView.swift
//  DatePickerDemo
//
//  Created by Thongchai Subsaidee on 26/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Home")
                .navigationTitle("Home")
                .toolbar {
                    NavigationLink(destination: AddTimerView()) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AddTimerView: View {
    @State var date = Date()
    
    var body: some View {
        
        DatePicker(selection: $date, displayedComponents: .hourAndMinute) {
            Text("")
        }
        .datePickerStyle(.wheel)
    }
}
