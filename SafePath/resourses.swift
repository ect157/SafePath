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
                
                
//END OF BOXES
                ZStack{
                          VStack{
                            HStack{
                              Rectangle()
                                .fill(Color("darkColor"))
                              .frame(width: 175, height: 300)
                              .cornerRadius(20) //1st big box
                              Rectangle()
                                .fill(Color("middleColor"))
                              .frame(width: 175, height: 300)
                              .cornerRadius(20)//2nd big box
                            }//end of 1st HStack
                            HStack{
                              Rectangle()
                                .fill(Color("middleColor"))
                              .frame(width: 175, height: 300)
                              .cornerRadius(20) //3rd big box
                              Rectangle()
                                .fill(Color("darkColor"))
                              .frame(width: 175, height: 300)
                              .cornerRadius(20)//4th big box
                            }//end of 2nd HStack
                          }//end of MAIN VSTACK for big box
                          VStack{
                            HStack{
                              Rectangle()
                                .fill(Color.black)
                              .frame(width: 120, height: 50)
                              .cornerRadius(20) //1st big box
                              Rectangle()
                                .fill(Color.black)
                              .frame(width: 120, height: 50)
                              .cornerRadius(20)//2nd big box
                            }//end of 1st HStack
                            HStack{
                              Rectangle()
                                .fill(Color.black)
                              .frame(width: 120, height: 50)
                              .cornerRadius(20) //3rd big box
                              Rectangle()
                                .fill(Color.black)
                              .frame(width: 120, height: 50)
                              .cornerRadius(20)//4th big box
                            }//end of 2nd HStack
                          }//end of MAIN VSTACK for little box
                        }//end of MAIN ZSTACK
 //END OF BOXES


                
            }//end of ZSTACK (app background color)
            .navigationBarItems( leading:
                                    HStack{
                Image("headApp")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 3.0)
                
                Spacer()
                
                Image("menu")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
            } // end HSTACK (header icons)
            ) // end NAV ITEMS
        }//end of NAV VIEW
    }//End of BODY
}//End of Struct

struct resourses_Previews: PreviewProvider {
    static var previews: some View {
        resourses()
    }
}
