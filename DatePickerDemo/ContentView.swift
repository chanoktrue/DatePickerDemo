//
//  ContentView.swift
//  DatePickerDemo
//
//  Created by Thongchai Subsaidee on 26/3/22.
//

import SwiftUI

struct ContentView: View {
    var arrs = ["AAA", "BBB"]
    var body: some View {

        NavigationView {
            VStack {
                Text("Home")
                List {
                    ForEach(arrs.indices, id: \.self) { index in
                        NavigationLink(destination: TimerView()) {
                            Text(arrs[index])
                        }
                    }
                }
            }
                .navigationTitle("Home")
                .toolbar {
                   
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TimerView: View {
    var body: some View {
        Text("Time")
            .navigationTitle("Time")
            .toolbar {
                NavigationLink(destination: AddTimerView()) {
                    Image(systemName: "plus.circle.fill")
                }
            }
    }
}

struct AddTimerView: View {
    @State var date = Date()
    
    var body: some View {
        
        DatePicker(selection: $date, displayedComponents: .hourAndMinute) {
            Text("")
        }
        .datePickerStyle(.wheel)
        .navigationTitle("Add Timer")
    }
}
