//
//  ContentView.swift
//  CameraApp
//
//  Created by 荻野隼 on 2020/12/05.
//

import SwiftUI

struct ContentView: View {
    @State var image:Image?
    @State var isPicking = false
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                image?
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {self.isPicking = true}) {
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking {
                ImagePicker()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
