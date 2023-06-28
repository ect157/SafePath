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
                      .font(.title3)
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
                    Text("To Victims:")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor((Color("mainColor")))
                    }

                    Text("[write about how this is used for those that need help]")
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))


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

                    Text("[write about how this is used for those that want to help]")
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))
                      .padding(.horizontal)


                  }
                } // End of 3RD BOX


                  } // end of HSTACK
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

          Button(action: {
            self.showMenu = true
          }) {
            Image("menu")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
          } // end of BUTTON IMG


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
            } // end HOME BUTTON
            .foregroundColor(Color("mainColor"))
            .padding(.all)
            .frame(width: 200)
            .overlay(
              RoundedRectangle(cornerRadius: 20)
                .stroke(Color("mainColor"), lineWidth: 3)
            )

            Text(" ")
              .font(.title2)


            Button("Map") {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } // end MAP BUTTON
            .foregroundColor(Color("mainColor"))
            .padding(.all)
            .frame(width: 200)
            .overlay(
              RoundedRectangle(cornerRadius: 20)
                .stroke(Color("mainColor"), lineWidth: 3)
            )

            Text(" ")
              .font(.title2)

            Button("Resources") {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } // end RESOURCES BUTTON
            .foregroundColor(Color("mainColor"))
            .padding(.all)
            .frame(width: 200)
            .overlay(
              RoundedRectangle(cornerRadius: 20)
                .stroke(Color("mainColor"), lineWidth: 3)
            )

            Text(" ")
              .font(.title2)

            Button("Information") {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } // end INFO BUTTON
            .foregroundColor(Color("mainColor"))
            .padding(.all)
            .frame(width: 200)
            .overlay(
              RoundedRectangle(cornerRadius: 20)
                .stroke(Color("mainColor"), lineWidth: 3)
            )
            Spacer()

          } // end BUTTON VSTACK

        } // end ZSTACK (menu buttons)
        .transition(.move(edge: .top)) // not working
        .edgesIgnoringSafeArea(.all)

      } // end NAVIGATION
      // MENU BAR (NOT WORKING YET) END -----------------------


    } // end BODY
  } // end CONTENT VIEW
} // end of STRUCT


struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
  ContentView()
 }
}
