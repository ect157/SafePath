//
// resourses.swift
// SafePath
//
// Created by Scholar on 6/27/23.
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

  @State private var b1Clicked = false
  @State private var b2Clicked = false
  @State private var b3Clicked = false
  @State private var b4Clicked = false

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
                        .frame( height: 225)
                      VStack{
                        ZStack{
                          Color("middleColor")
                            .frame(height: 50)
                            .cornerRadius(20)
                            .padding(.all)
                          Button("Button 1") {
                            self.b1Clicked = true
                          }
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor((Color("mainColor")))
                        }
                        Text("hshdsjkskadhjksadhjksdhkjashdjk")
                          .font(.body)
                          .fontWeight(.bold)
                          .foregroundColor((Color("mainColor")))
                          .padding(.horizontal)
                      }
                    }
                    .padding(.leading) // End of 1st BOX

                    ZStack{
                     Color("middleColor")
                      .cornerRadius(20)
                      .frame(height: 225)
                     VStack{
                      ZStack{
                       Color("darkColor")
                          .frame(height: 50)
                        .cornerRadius(20)
                        .padding(.all)
                        Button("Button 2") {
                          self.b2Clicked = true
                        }
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor((Color("mainColor")))

                      }
                      Text("hshdsjkskadhjksadhjksdhkjashdjk")
                       .font(.body)
                       .fontWeight(.bold)
                       .foregroundColor((Color("mainColor")))
                       .padding(.horizontal)
                     }
                    }
                    .padding(.trailing) // End of 3rd BOX
                  } // end of HSTACK


                  HStack{
                          ZStack{
                           Color("middleColor")
                            .cornerRadius(20)
                            .frame(height: 225)
                           VStack{
                            ZStack{
                             Color("darkColor")
                                .frame(height: 50)
                              .cornerRadius(20)
                              .padding(.all)
                            Button("Button 3") {
                              self.b3Clicked = true
                              }
                              .font(.title3)
                              .fontWeight(.bold)
                              .foregroundColor((Color("mainColor")))
                            }
                            Text("hshdsjkskadhjksadhjksdhkjashdjk")
                             .font(.body)
                             .fontWeight(.bold)
                             .foregroundColor((Color("mainColor")))
                             .padding(.horizontal)
                           }
                          }
                          .padding(.leading) // End of 3rd BOX
                           Spacer()
                          ZStack{
                           Color("darkColor")
                            .cornerRadius(20)
                            .frame( height: 225)
                           VStack{
                            ZStack{
                             Color("middleColor")
                              .frame(height: 50)
                              .cornerRadius(20)
                              .padding(.all)
                            Button("Button 4") {
                              self.b4Clicked = true
                              }
                              .font(.title3)
                              .fontWeight(.bold)
                              .foregroundColor((Color("mainColor")))
                            }
                            Text("hshdsjkskadhjksadhjksdhkjashdjk")
                             .font(.body)
                             .fontWeight(.bold)
                             .foregroundColor((Color("mainColor")))
                             .padding(.horizontal)
                           }
                          }
                          .padding(.trailing) // End of 4th BOX
                           } // end of HSTACK


                  //END OF BOXES

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

                }//end of VSTACK


        // START SHEETS

                .sheet(isPresented: $b1Clicked) {
                  ZStack{
                    Color("darkColor")
                      .ignoresSafeArea()

                    ZStack{
                      VStack{
                        ZStack{
                          Color("middleColor")
                            .cornerRadius(20)
                            .frame(width: 300, height: 50)

                          Text("More on Button 1...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                        Text("lallallallalala...")
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                      }
                    }

                  }
                } // end B1 SHEET

                .sheet(isPresented: $b2Clicked) {
                  ZStack{
                    Color("middleColor")
                      .ignoresSafeArea()

                    ZStack{
                      VStack{
                        ZStack{
                          Color("darkColor")
                            .cornerRadius(20)
                            .frame(width: 300, height: 50)

                          Text("More on Button 2...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                        Text("lallallallalala...")
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                      }
                    }
                  }
                } // end B2 SHEET

                .sheet(isPresented: $b3Clicked) {
                  ZStack{
                    Color("middleColor")
                      .ignoresSafeArea()

                    ZStack{
                      VStack{
                        ZStack{
                          Color("darkColor")
                            .cornerRadius(20)
                            .frame(width: 300, height: 50)

                          Text("More on Button 3...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                        Text("lallallallalala...")
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                      }
                    }

                  }
                } // end B3 SHEET

                .sheet(isPresented: $b4Clicked) {
                  ZStack{
                    Color("darkColor")
                      .ignoresSafeArea()

                    ZStack{
                      VStack{
                        ZStack{
                          Color("middleColor")
                            .cornerRadius(20)
                            .frame(width: 300, height: 50)

                          Text("More on Button 4...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                        Text("lallallallalala...")
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                      }
                    }

                  }
                } // end B4 SHEET
        // END SHEETS


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
