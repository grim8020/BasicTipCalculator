//
//  ContentView.swift
//  First App
//
//  Created by Todd Perkins on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
