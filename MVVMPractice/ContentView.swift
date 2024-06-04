//
//  ContentView.swift
//  MVVMPractice
//
//  Created by Tsani Chico Bragi on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
                .padding()
            
            HStack {
                Button("Increment") {
                    vm.increment()
                }
                Text("\(vm.counter)")
                    .bold()
                    .foregroundStyle(Color.gray)
                    .padding()
            }
            List(vm.itemList) {item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item") {
                vm.addItem()
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//#Preview {
//    ContentView()
//}
