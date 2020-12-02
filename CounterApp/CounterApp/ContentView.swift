//
//  ContentView.swift
//  CounterApp
//
//  Created by 荻野隼 on 2020/12/02.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Text("\(number)")
                .padding()
//            クロージャ
            Button(action: {self.number += 1}) {
                Text("カウント")
            }
//            こうもかける
//            Button(action: {() -> Void in self.number += 1}){
//                Text("カウント")
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
