//
//  DropDown.swift
//  WeSplit
//
//  Created by Dylan Balagtas on 3/30/25.
//

//
//  ContentView.swift
//  WeSplit
//
//  Created by Dylan Balagtas on 3/29/25.
//

import SwiftUI

struct DropDown: View {
    let students = ["Dylan", "John", "Mary", "Alex"]
    @State private var selectedStudent = "Dylan"
    var body: some View {
        Form{
            Picker("Select your student", selection : $selectedStudent){
                ForEach(students, id: \.self){
                    Text($0)
                }
            }
        }
        
    }
}

#Preview {
    DropDown()
}


