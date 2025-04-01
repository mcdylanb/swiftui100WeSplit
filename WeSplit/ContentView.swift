//
//  ContentView.swift
//  WeSplit
//
//  Created by Dylan Balagtas on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 20
    var body: some View {
        let tipPercentages = [10,15,20,25,0]
        
        var totalPerPerson: Double {
            let peopleCount = Double(numberOfPeople+2)
            let tipPercentage = Double(tipPercentage)
            
            let tipValue = checkAmount / 100 * tipPercentage
            let grandTotal = checkAmount + tipValue
            let amountPerPerson = grandTotal / peopleCount
            
            return amountPerPerson
        }
        
        NavigationStack{
            Form{
                Section{
                    TextField("Amount:", value: $checkAmount, format:
                            .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100){
                           Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                Section("How much tip do you want to leave?"){
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(tipPercentages, id: \.self ){
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }

            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
