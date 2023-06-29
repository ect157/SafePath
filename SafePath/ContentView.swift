//
// ContentView.swift
// SafePath
//
// Created by scholar on 6/27/23.
// COMMENT TEST
// :face_with_cowboy_hat:yepyepyep super cool feature!!!!(:
// commit
//orange
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
  } // end INITIALIZER

  var body: some View {

    // MENU BAR (NOT WORKING YET) START ---------------------
    NavigationView {
      ZStack{
        Color("mainColor")
          .ignoresSafeArea()
        VStack {
          // PUT MAIN STUFF HERE !!

          ZStack{
            VStack{
              ZStack{
                VStack{
                  HStack{
                    Color("darkColor")
                      .cornerRadius(20)
                      .frame(height: 125)
                    Text("    ")
                  }
                    Text(" ")
                      .font(.title)

                }
                HStack{
                  Text("     ")
                    .font(.title)
                  ZStack{
                    Color("blueColor")
                      .cornerRadius(20)
                      .frame(height: 100)
                    Text("SafePath")
                      .font(.title)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))

                  } // end TITLE BOX

                } // end of FIRST ROW
              } // end of ZSTACK (dark brown first row)



              HStack{
                ZStack{

                  Color("darkColor")
                    .cornerRadius(20)
                    .frame(height: 400)
                  VStack{
                      ZStack{
                          Color("middleColor")
                              .frame(height: 50)
                              .cornerRadius(20)
                              .padding(.all)
                          VStack{
                              Text("If you need")
                                  .font(.title3)
                                  .fontWeight(.bold)
                                  .foregroundColor((Color("mainColor")))
                              Text("HELP: ")
                                  .font(.title3)
                                  .fontWeight(.bold)
                                  .foregroundColor((Color("mainColor")))
                          }
                      }

                    Text("For urgent help, go to the MAP page to update your location. ")
                      .font(.body)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))
                      .padding(.horizontal)
                      Text("")
                      Text("Find help resources on the RESOURCES page.")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor((Color("mainColor")))
                        .padding(.horizontal)
                      Text("")
                      Text("Access app navigation by clicking the 3 bars at the top.")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor((Color("mainColor")))
                        .padding(.horizontal, 9.0)


                  }
                } // End of 2ND BOX
                  Spacer()

                ZStack{

                  Color("middleColor")
                    .cornerRadius(20)
                    .frame(height: 400)
                  VStack{
                    ZStack{
                      Color("darkColor")
                        .frame(height: 50)
                        .cornerRadius(20)
                        .padding(.all)
                    Text("To Learners:")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor((Color("mainColor")))
                    }

                    Text("Access the INFORMATION tab to help, spot warning signs, or report potential danger.")
                      .font(.body)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))
                      .padding(.horizontal)


                  }
                } // End of 3RD BOX


                  } // end of HSTACK
                
                ZStack{
                  Color("redColor")
                    .cornerRadius(20)
                    .frame(width: 200, height: 50)
                  Button("HOTLINE") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                  }
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("mainColor"))
                }
              
                
            } // End of MAIN STUFF

          }//end of VSTACK (with initial img and text)
          .padding()
        }//end of ZSTACK (app background color)
        .navigationBarItems( leading:
                    HStack{

          Image("headApp")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)


          Spacer()

            NavigationLink(destination: menu()) {
                Image("menu")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                    
            }

            

        } // end HSTACK (header icons)
                             
        ) // end NAV ITEMS

      } // end MAIN CONTENT
      
        
        
      // MENU BAR (NOT WORKING YET) END -----------------------


    } // end BODY
  } // end CONTENT VIEW
} // end of STRUCT


struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  ContentView()
 }
}
