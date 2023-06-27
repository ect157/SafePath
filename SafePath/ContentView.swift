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
    
    @State private var showMenu = false
    
    init() {
            // Customize the navigation bar appearance
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color("darkColor"))
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color("mainColor")
                    .ignoresSafeArea()
                    VStack {
                        // PUT MAIN STUFF HERE !!
                    }//end of VSTACK (with initial img and text)
                .padding()
            }//end of ZSTACK (app background color)
                    .navigationBarItems( leading:
                                            HStack{
                        
                        Image("headApp")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                        
                        Image("menu")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    } // end HSTACK (header icons)
                        ) // end NAV ITEMS
                    
                } // end MAIN CONTENT
            } // end BODY
        } // end CONTENT VIEW

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
