//
// info.swift
// SafePath
//
// Created by Scholar on 6/27/23.
//

import SwiftUI

struct info: View {
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

            Text("Information")
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
                  Button("Saftey Tips") {
                    self.b1Clicked = true
                  }
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor((Color("mainColor")))
                }
                Text("Safety Planning Information\n...")
                  .font(.body)
                  .fontWeight(.bold)
                  .foregroundColor((Color("mainColor")))
                  .multilineTextAlignment(.center)
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
                Button("Volunteering") {
                  self.b2Clicked = true
                }
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor((Color("mainColor")))
              }
              Text("Ways to get involved\n...")
               .font(.body)
               .fontWeight(.bold)
               .foregroundColor((Color("mainColor")))
               .multilineTextAlignment(.center)
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
                      Button("Donating") {
                        self.b3Clicked = true
                      }
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))
                    }
                    Text("Support organizations\n...")
                     .font(.body)
                     .fontWeight(.bold)
                     .foregroundColor((Color("mainColor")))
                     .multilineTextAlignment(.center)
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
                      Button("Identification") {
                        self.b4Clicked = true
                      }
                      .font(.title3)
                      .fontWeight(.bold)
                      .foregroundColor((Color("mainColor")))
                    }
                    Text("How to identify and assist a victim")
                     .font(.body)
                     .fontWeight(.bold)
                     .foregroundColor((Color("mainColor")))
                     .multilineTextAlignment(.center)
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
                       guard let phoneURL = URL(string: "tel:\(9842843213)") else { return }
                             UIApplication.shared.open(phoneURL)
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

                          Text("More on saftey tips...")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                          Text(" - Trust Your Judgment \n  - Let trusted friends/relatives know if you feel like you are in danger \n - Set up safe words with trusted friends/relatives \n - Keep all important documents/identification with you at all times \n - Make sure you have means of communication, access to your bank account, and any medication that is needed with you at all times\n - If you think you are in immediate danger, CALL 911")
                              .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                          .padding(.horizontal, 15.0)
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

                          Text("More on Volunteering")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                          Text(" Discover meaningful volunteering opportunities that empower and support survivors of human trafficking through the following links:\n")
                              .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                          .padding(.horizontal, 15.0)
                        Link("safehorizon", destination: URL(string: "https://www.safehorizon.org/volunteer-internship-opportunities/")!)
                                .font(.title)
                                .buttonStyle(.borderedProminent)
                                .tint(Color("blueColor"))
                                .foregroundColor(.white)
                        Link("Sanctuary for Families", destination: URL(string: "https://sanctuaryforfamilies.org/support-us/volunteer/")!)
                                  .font(.title)
                                  .buttonStyle(.borderedProminent)
                                  .tint(Color("blueColor"))
                                  .foregroundColor(.white)
                        Link("Restore", destination: URL(string: "https://restorenyc.org/get-involved/volunteer/")!)
                                    .font(.title)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("blueColor"))
                                    .foregroundColor(.white)
                        Link("WOMANKIND", destination: URL(string: "https://www.iamwomankind.org/get-involved/")!)
                                      .font(.title)
                                      .buttonStyle(.borderedProminent)
                                      .tint(Color("blueColor"))
                                      .foregroundColor(.white)
                          
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

                          Text("More on Donating")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                          Text("Support organizations aiding victims of human trafficking by exploring the following donation opportunities through the provided links.")
                              .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                          .padding(.horizontal, 15.0)
                          Link("safehorizon", destination: URL(string: "https://www.safehorizon.org/volunteer-internship-opportunities/")!)
                                  .font(.title)
                                  .buttonStyle(.borderedProminent)
                                  .tint(Color("blueColor"))
                                  .foregroundColor(.white)
                          Link("Sanctuary for Families", destination: URL(string: "https://sanctuaryforfamilies.org/support-us/volunteer/")!)
                                    .font(.title)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("blueColor"))
                                    .foregroundColor(.white)
                          Link("Restore", destination: URL(string: "https://restorenyc.org/get-involved/volunteer/")!)
                                      .font(.title)
                                      .buttonStyle(.borderedProminent)
                                      .tint(Color("blueColor"))
                                      .foregroundColor(.white)
                          Link("Covenant House", destination: URL(string: "https://www.covenanthouse.org/donation-options/donate-now")!)
                                      .font(.title)
                                      .buttonStyle(.borderedProminent)
                                      .tint(Color("blueColor"))
                                      .foregroundColor(.white)
                          Link("GEMS", destination: URL(string: "https://gems-girls.networkforgood.com/")!)
                                      .font(.title)
                                      .buttonStyle(.borderedProminent)
                                      .tint(Color("blueColor"))
                                      .foregroundColor(.white)
                          Link("WOMANKIND", destination: URL(string: "https://www.iamwomankind.org/get-involved/")!)
                                        .font(.title)
                                        .buttonStyle(.borderedProminent)
                                        .tint(Color("blueColor"))
                                        .foregroundColor(.white)
                          Link("Sex Workers Project / Urban Justice Center", destination: URL(string: "https://swp.urbanjustice.org/donate-2/")!)
                                        .font(.title)
                                        .buttonStyle(.borderedProminent)
                                        .tint(Color("blueColor"))
                                        .foregroundColor(.white)
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

                          Text("More on Identification")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("mainColor"))
                        }
                        Text("How to identify and assist a victim")
                          .fontWeight(.bold)
                          .foregroundColor(Color("mainColor"))
                        Link("state.gov tips", destination: URL(string: "https://www.state.gov/identify-and-assist-a-trafficking-victim/")!)
                                        .font(.title)
                                        .buttonStyle(.borderedProminent)
                                        .tint(Color("blueColor"))
                                        .foregroundColor(.white)
                          
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

        Spacer()

        Image("menu")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)

      } // end HSTACK (header icons)
      ) // end NAV ITEMS
    }
  }
}

struct info_Previews: PreviewProvider {
  static var previews: some View {
    info()
  }
}
