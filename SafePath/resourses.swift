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
                
                
                
 //START OF BOXES
                              
                                VStack{
                                    ZStack{
                                        Color("blueColor")
                                            .cornerRadius(20)
                                            .frame(height: 50)
                                        
                                        Text("Resources")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("mainColor"))
                                    }
                                    .padding(.horizontal)
                                    HStack{
                                        ZStack{
                                            Color("darkColor")
                                                .cornerRadius(20)
                                                .frame( height: 300)
                                            VStack{
                                                ZStack{
                                                    Color("middleColor")
                                                        .frame(height: 50)
                                                        .cornerRadius(20)
                                                        .padding(.all)
                                                    Text("Box 1")
                                                        .font(.title3)
                                                        .fontWeight(.bold)
                                                        .foregroundColor((Color("mainColor")))
                                                }
                                                Text("hshdsjkskadhjksadhjksdhkjashdjk")
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                    .foregroundColor((Color("mainColor")))
                                            }
                                        }
                                        .padding(.leading) // End of 1st BOX
                                        
                                        ZStack{
                                          Color("middleColor")
                                            .cornerRadius(20)
                                            .frame(height: 300)
                                          VStack{
                                            ZStack{
                                              Color("darkColor")
                                                    .frame(height: 50)
                                                .cornerRadius(20)
                                                .padding(.all)
                                            Text("Box 2")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor((Color("mainColor")))
                                            }
                                            Text("hshdsjkskadhjksadhjksdhkjashdjk")
                                              .font(.title3)
                                              .fontWeight(.bold)
                                              .foregroundColor((Color("mainColor")))
                                          }
                                        }
                                        .padding(.trailing) // End of 3rd BOX
                                    } // end of HSTACK
                                    
                                    
                                    HStack{
                                                    ZStack{
                                                      Color("middleColor")
                                                        .cornerRadius(20)
                                                        .frame(height: 300)
                                                      VStack{
                                                        ZStack{
                                                          Color("darkColor")
                                                                .frame(height: 50)
                                                            .cornerRadius(20)
                                                            .padding(.all)
                                                        Text("Box 3")
                                                            .font(.title3)
                                                            .fontWeight(.bold)
                                                            .foregroundColor((Color("mainColor")))
                                                        }
                                                        Text("hshdsjkskadhjksadhjksdhkjashdjk")
                                                          .font(.title3)
                                                          .fontWeight(.bold)
                                                          .foregroundColor((Color("mainColor")))
                                                      }
                                                    }
                                                    .padding(.leading) // End of 3rd BOX
                                                      Spacer()
                                                    ZStack{
                                                      Color("darkColor")
                                                        .cornerRadius(20)
                                                        .frame( height: 300)
                                                      VStack{
                                                        ZStack{
                                                          Color("middleColor")
                                                            .frame(height: 50)
                                                            .cornerRadius(20)
                                                            .padding(.all)
                                                        Text("Box 4")
                                                            .font(.title3)
                                                            .fontWeight(.bold)
                                                            .foregroundColor((Color("mainColor")))
                                                        }
                                                        Text("hshdsjkskadhjksadhjksdhkjashdjk")
                                                          .font(.title3)
                                                          .fontWeight(.bold)
                                                          .foregroundColor((Color("mainColor")))
                                                      }
                                                    }
                                                    .padding(.trailing) // End of 4th BOX
                                                      } // end of HSTACK


                    
                                    
                                }//end of VSTACK











                                
                                
                //END OF BOXES


                
            }//end of ZSTACK (app background color)
            .navigationBarItems( leading:
                                    HStack{
                Image("headApp")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 3.0)
                
                Spacer()
                
                
                    
                
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
