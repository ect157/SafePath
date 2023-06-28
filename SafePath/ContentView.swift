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


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
