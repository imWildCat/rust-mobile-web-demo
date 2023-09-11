//
//  ContentViewSimple.swift
//  DemoRustSwiftApp
//
//  Created by Daohan Chong on 9/11/23.
//

import SwiftUI

struct ContentViewSimple: View {
    @State var valueA: Int32 = 0
    @State var valueB: Int32 = 0

    var body: some View {
        // simple add op only calculate by adding a and b
        VStack {
            HStack {
                Text("a:")
                TextField("", value: $valueA, formatter: NumberFormatter())
            }
            HStack {
                Text("b:")
                TextField("", value: $valueB, formatter: NumberFormatter())
            }
            Text("a + b = \(add(a: valueA, b: valueB))")
        }
    }
}

struct ContentViewSimple_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewSimple()
    }
}
