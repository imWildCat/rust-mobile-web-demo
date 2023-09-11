//
//  ContentView.swift
//  DemoRustSwiftApp
//
//  Created by Daohan Chong on 9/11/23.
//

import SwiftUI
struct ContentView: View {
    @State var valueA: Int32 = 0
    @State var valueB: Int32 = 0

    var body: some View {
        // simple add op only calculate by adding a and b
        VStack(spacing: 20) {
            Text("Simple Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)

            HStack {
                Text("a:")
                    .font(.title)
                    .foregroundColor(.gray)
                Spacer()
                TextField("", value: $valueA, formatter: NumberFormatter())
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .keyboardType(.numberPad)
            }
            .padding(.horizontal)

            HStack {
                Text("b:")
                    .font(.title)
                    .foregroundColor(.gray)
                Spacer()
                TextField("", value: $valueB, formatter: NumberFormatter())
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .keyboardType(.numberPad)
            }
            .padding(.horizontal)

            Text("a + b = \(add(a: valueA, b: valueB))")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
