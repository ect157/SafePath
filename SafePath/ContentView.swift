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
                                        
                                            Text("put items here")
                        .font(.title)
                        )
                    
                }
            }
        }

        struct DetailView: View {
            var body: some View {
                VStack {
                    Text("Detail Content")
                        .font(.largeTitle)
                    
                    NavigationLink(destination: SubDetailView()) {
                        Text("Go to Subdetail")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .navigationBarTitle("Detail")
            }
        }

        struct SubDetailView: View {
            var body: some View {
                Text("Subdetail Content")
                    .font(.largeTitle)
                    .navigationBarTitle("Subdetail")

        
        
    } //end of BODY
}//end of STRUCT

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
