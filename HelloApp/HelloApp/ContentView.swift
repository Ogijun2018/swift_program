//
//  ContentView.swift
//  HelloApp
//
//  Created by 荻野隼 on 2020/12/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                Image(systemName: "speaker.3.fill")
            }
            .accentColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            // Rectangle().padding()
            // こうもかける
            // let rect = Rectangle()
            // rect.padding()
            Image(systemName: "smiley")
                .resizable()
                .scaledToFit()
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
