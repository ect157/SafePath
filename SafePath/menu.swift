//
//  menu.swift
//  SafePath
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI



struct menu: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("darkColor")
                    .ignoresSafeArea()
                VStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Home")
                            .foregroundColor(Color("mainColor"))
                            .padding(.all)
                            .frame(width: 200)
                            .overlay(
                              RoundedRectangle(cornerRadius: 20)
                                  .stroke(Color("mainColor"), lineWidth: 3)
                            )
                    }
                    
                    Text(" ")
                        .font(.title2)
                    
                    
                    NavigationLink(destination: map()) {
                        Text("Map")
                            .foregroundColor(Color("mainColor"))
                            .padding(.all)
                            .frame(width: 200)
                            .overlay(
                              RoundedRectangle(cornerRadius: 20)
                                  .stroke(Color("mainColor"), lineWidth: 3)
                            )
                    }
                    
                    Text(" ")
                        .font(.title2)
                    
                    NavigationLink(destination: resourses()) {
                        Text("Resources")
                            .foregroundColor(Color("mainColor"))
                            .padding(.all)
                            .frame(width: 200)
                            .overlay(
                              RoundedRectangle(cornerRadius: 20)
                                  .stroke(Color("mainColor"), lineWidth: 3)
                            )
                    }
                    
                    Text(" ")
                        .font(.title2)
                    
                    NavigationLink(destination: info()) {
                        Text("Information")
                            .foregroundColor(Color("mainColor"))
                            .padding(.all)
                            .frame(width: 200)
                            .overlay(
                              RoundedRectangle(cornerRadius: 20)
                                  .stroke(Color("mainColor"), lineWidth: 3)                      )
                    }
                    Spacer()
                    
                }
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
                .frame(height: 100)
            }// end BUTTON VSTACK
            
        } // end ZSTACK (menu buttons)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
     // end NAVIGATION
    // MENU BAR (NOT WORKING YET) END -----------------------
        
        
    } // end BODY
} // end STRUCT

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}
