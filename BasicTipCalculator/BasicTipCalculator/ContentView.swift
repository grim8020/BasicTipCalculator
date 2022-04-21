//
//  ContentView.swift
//  BasicTipCalculator
//
//  Created by Shane Grim on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var total = ""
    @State var tipPercent = 15.0
    
    var body: some View {
        
        VStack {
            
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .padding()
            
            
            HStack {
                
                Text("$")
                    .padding(0.5)
                TextField("Amount", text: $total)
                    .padding()

            }
            .padding(.all)
            
            HStack {
                
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            Text("Tip Amount: $\(Double(total)! * (tipPercent/100.0))")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
