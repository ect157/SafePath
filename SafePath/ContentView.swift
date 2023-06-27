//
//  ContentView.swift
//  SafePath
//
//  Created by scholar on 6/27/23.
//  COMMENT TEST
//  🤠yepyepyep super cool feature!!!!(:
//commit

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color("mainColor")
                .ignoresSafeArea()
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("I WANNA SLEEP 😴!")
                }//end of VSTACK (with initial img and text)
            .padding()
        }//end of ZSTACK (app background color)
    } //end of BODY
}//end of STRUCT

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
