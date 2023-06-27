//
//  resourses.swift
//  SafePath
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct resourses: View {
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
        }
    }
}

struct resourses_Previews: PreviewProvider {
    static var previews: some View {
        resourses()
    }
}
