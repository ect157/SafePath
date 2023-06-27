//
//  ContentView.swift
//  SafePath
//
//  Created by scholar on 6/27/23.
//  COMMENT TEST
//  🤠yepyepyep super cool feature!!!!(:
//commit
// new update!!kjh

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
                        
                        Button(action: {
                            self.showMenu = true
                        }) {
                            Image("menu")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }

                        
                    } // end HSTACK (header icons)
                        ) // end NAV ITEMS
                    
                } // end MAIN CONTENT
        .sheet(isPresented: $showMenu){
            ZStack{
                Color("darkColor")
                
                VStack{
                    
                    Spacer()
                    
                    Button("Home") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("mainColor"))
                    .padding(.all)
                    .border(Color("mainColor"))
                    
                    Spacer()
                    
                    Button("Map") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("mainColor"))
                    .padding(.all)
                    .border(Color("mainColor"))
                    
                    Spacer()
                    
                    Button("Resources") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("mainColor"))
                    .padding(.all)
                    .border(Color("mainColor"))
                    
                    Spacer()
                    
                    Button("Information") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("mainColor"))
                    .padding(.all)
                    .border(Color("mainColor"))
                    
                    Spacer()
                    
                }
                
            } // end ZSTACK (menu buttons)
                .transition(.move(edge: .top)) // not working
                .edgesIgnoringSafeArea(.all)
            
        }
        
            } // end BODY
        } // end CONTENT VIEW

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
