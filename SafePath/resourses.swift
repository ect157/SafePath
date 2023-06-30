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
                                        .padding(.horizontal)
                                    Button("Emergency") {
                                        self.b1Clicked = true
                                    }
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor((Color("mainColor")))
                                }
                                Text("In an emergency, call 911")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor((Color("mainColor")))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                Spacer().frame( height: 35)
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
                                        .padding(.horizontal)
                                    Button("Police Departments") {
                                        self.b2Clicked = true
                                    }
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor((Color("mainColor")))
                                    
                                }
                                Text("Here are some of the police departments in New York City")
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
                                        .padding(.horizontal)
                                    Button("Organizations") {
                                        self.b3Clicked = true
                                    }
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor((Color("mainColor")))
                                }
                                Text("Here are some organizations created to help victims of human trafficking")
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
                                        .padding(.horizontal)
                                    Button("Fire \n Departments") {
                                        self.b4Clicked = true
                                    }
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor((Color("mainColor")))
                                }
                                Text("Here are some of the fire departments in New York City")
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
                                    
                                    Text("Emergency")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("mainColor"))
                                }
                                Text("If you are in an emergency or in any immediate danger, call 911")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("mainColor"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
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
                                    
                                    Text("Police Departments")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("mainColor"))
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                                
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
                                        .frame(width: 350, height: 50)
                                    
                                    Text("Centers and Sanctuaries")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("mainColor"))
                                }
                                .padding(.top)
                                
                                //Start of Centers and Sancs
                                
                                ScrollView{
                                    
                                    VStack{//VSTACK FOR ALL
                                        
                                        ZStack{ Rectangle()
                                                .frame(width: 350, height: 600)
                                                .foregroundColor(Color("darkColor"))
                                                .cornerRadius(20)
                                            
                                            VStack{
                
                                                    Text("Manhattan Family Justice Center:")
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                        .bold()
                                                    
                                                    Text(" ")
                                                        .font(.title)
                                                    
                                                    Text("Services: \n -Individual Counseling \n -Family Counseling \n -Medical Treatment \n -Housing \n -Safety Planning \n \nAddress: 80 Centre Street, 5th Floor New York, NY 10013 \n \nNumber: 212-602-2800")
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 35.0)
                                                    
                                                    Text(" ")
                                                    .font(.title)
                                                    
                                                }//end of 1st Vstack of sanc
                                                
                                            }//end of 1st ZStack sanc
                                        
                                        ZStack{ Rectangle()
                                                .frame(width: 350, height: 600)
                                                .foregroundColor(Color("darkColor"))
                                                .cornerRadius(20)
                                            
                                            VStack{
                
                                                    Text("Covenant House:")
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                        .bold()
                                                    
                                                    Text(" ")
                                                        .font(.title)
                                                    
                                                    Text("Services: \n -Crisis Counseling \n -Emergency Housing (for boys and girls ages 18-20 and 16-18 if ACS is contacted) \n \nNumber: 212-613-0300 \nWebsite: www.covenanthouse.org")
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 35.0)
                                                    
                                                    Text(" ")
                                                    .font(.title)
                                                    
                                                }//end of 2nd Vstack of sanc
                                                
                                            }//end of 2nd ZStack sanc
                                        
                                        ZStack{ Rectangle()
                                                .frame(width: 350, height: 600)
                                                .foregroundColor(Color("darkColor"))
                                                .cornerRadius(20)
                                            
                                            VStack{
                
                                                    Text("Girls Education \n& Mentoring Services (GEMS):")
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                        .bold()
                                                    
                                                    Text(" ")
                                                        .font(.title)
                                                    
                                                    Text("Services: \n -Court/Police Accompaniment \n -Crisis Counseling \n -Emergency Assistance/Transportaion \n -Long Term Counseling \n -Refferals \n -Trafficking Victim Services \n \nAddress: 201 W. 148th street, Ground Floor, New York, NY 10039 \n \nNumber: 212-926-8089 \n \nWebsite: www.gems-girls.org")
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 35.0)
                                                    
                                                    Text(" ")
                                                    .font(.title)
                                                    
                                                }//end of 3rd Vstack of sanc
                                                
                                            }//end of 3rd ZStack sanc
                                        
                                        ZStack{ Rectangle()
                                                .frame(width: 350, height: 600)
                                                .foregroundColor(Color("darkColor"))
                                                .cornerRadius(20)
                                            
                                            VStack{
                
                                                    Text("WOMANKIND:")
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                        .bold()
                                                    
                                                    Text(" ")
                                                        .font(.title)
                                                    
                                                    Text("Services: \n -Court/Police Accompaniment \n -Crisis Counseling \n -Emercency Assistance/Transportation  \n -Health Services \n -Long Term Counseling \n -Referrals\n -Shelter/Housing Assistance\n -Emergency Housing (Adult and Childred) \n -Trafficking Victim Services \n \nAddress: 32 Broadway, 10th Floor New York, NY 10004 \n \nNumber: 212-732-0054 \n \nNumber: 888-888-7702\n \nWebsite: www.iamwomankind.org")
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 35.0)
                                                    
                                                    Text(" ")
                                                    .font(.title)
                                                    
                                                }//end of 4th Vstack of sanc
                                                
                                            }//end of 4th ZStack sanc
                                        
                                        ZStack{ Rectangle()
                                                .frame(width: 350, height: 600)
                                                .foregroundColor(Color("darkColor"))
                                                .cornerRadius(20)
                                            
                                            VStack{
                
                                                    Text("Safe Horizon •\nAnti-Trafficking Program:")
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                        .bold()
                                                    
                                                    Text(" ")
                                                        .font(.title)
                                                    
                                                    Text("Services: \n -Court/Police Accompaniment \n -Crisis Counseling \n -Emergency Assistance/Transportation \n -Health Services \n -HIV/AIDS (Referral) \n -Legam Services \n -Long Term Counseling \n -Shelter/Housing Assistance (Referral) \n -Emergency Housing (Adult and Children) \n -Trafficking Victim Services \n \nAddress: 50 Court Street, 8th Floor, Brooklyn, NY, 11201 \n \nAnti-Trafficking Program Hotline: 800-621-4673 (HOPE) \n \nAll-Crimes Hotline: 866-689-HELP (4357) \n \nWebsite: www.safehorizon.org")
                                                        .foregroundColor(.white)
                                                        .padding(.horizontal, 35.0)
                                                    
                                                    Text(" ")
                                                    .font(.title)
                                                    
                                                }//end of 5th Vstack of sanc
                                                
                                            }//end of 5th ZStack sanc
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }//end of VSTACK
    }// end of scroll view
                                }//end of Centers and Sance
                                }//end of VSTACK
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
                                        
                                        Text("Fire Departments")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("mainColor"))
                                        
                                    }
                                    .padding(.top)
                                    //Start of ScrollView
                                    ScrollView{
                                        VStack{
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 350, height: 600)
                                                    .foregroundColor(Color("middleColor"))
                                                    .cornerRadius(20)
                                                
                                                VStack{
                                                    Group{
                                                        Text("Manhattan")
                                                            .font(.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\tFDNY Engine 54/Ladder 4/Battalion 9 \n Address: 782 8th Ave, New York, NY 10036")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 8/Ladder 2/Battalion 8 \n Address: 165 E 51st St, New York, NY 10022")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 7, Ladder 1, Battalion 1 \n Address: 100 Duane St, New York, NY 10007")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 22/Ladder 13/Battalion 10 \n Address: 159 E 85th St, New York, NY 10028")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                        .font(.title)}//end of group
                                                    Group{ Text("\t FDNY Engine 4/Tower Ladder 15 \n Address: 42 South St, New York, NY 10005 \n Phone: (212) 809-4887")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                    }//Group 2
                                                    
                                                }//address
                                            }//end of 1st ZStack (Manhattan)
                                            
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 350, height: 600)
                                                    .foregroundColor(Color("middleColor"))
                                                    .cornerRadius(20)
                                                
                                                VStack{
                                                    Group{
                                                        Text("Brooklyn")
                                                            .font(.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\tFDNY Engine 231/Ladder 120/Battalion 44 \n Address: 107 Watkins St, Brooklyn, NY 11212")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 241/Ladder 109 \n Address: 6630 3rd Ave, Brooklyn, NY 11220")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 283/Division 15 \n Address: 885 Howard Ave, Brooklyn, NY 11212 \n Phone: (718) 999-2000")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\tFDNY Engine 238 & Ladder 106 \n Address: 205 Greenpoint Ave, Brooklyn, NY 11222")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                        .font(.title)}//end of group
                                                    Group{ Text("\t FDNY Engine 253 \n Address: 2429 86th St, Brooklyn, NY 11214 \n Phone: (718) 965-8253")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                    }//end of group 2
                                                }//end of VSTack Brooklyn
                                            }//end of ZStack for Brooklyn
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 350, height: 600)
                                                    .foregroundColor(Color("middleColor"))
                                                    .cornerRadius(20)
                                                
                                                VStack{
                                                    Group{
                                                        Text("Bronx")
                                                            .font(.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 73/Ladder 42 \n Address: 655 Prospect Ave, Bronx, NY 10455")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 81/Ladder 46\n Address: 3025 Bailey Ave, Bronx, NY 10463")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 60/Ladder 17/Battalion 14 \n Address: 243 E 233rd St, Bronx, NY 10470")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 71, Ladder 55, Division 6 \n Address: 720 Melrose Ave, Bronx, NY 10455 \n Phone: (718) 999-2000")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                        .font(.title)}//end of group
                                                    Group{ Text("\t FDNY Engine 92/Ladder 44/Battalion 17 \n Address: 1259 Morris Ave, Bronx, NY 10456 \n Phone: (718) 999-2000")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                    }//Group 2
                                                    
                                                }//address
                                            }//end of 1st ZStack (Bronx)
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 350, height: 600)
                                                    .foregroundColor(Color("middleColor"))
                                                    .cornerRadius(20)
                                                
                                                VStack{
                                                    Group{
                                                        Text("Queens")
                                                            .font(.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 301/Ladder 150 \n Address: 91-4 197th St, Queens, NY 11423 \n Phone: (718) 542-1132")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 286/Ladder 135 \n Address: 66-44 Myrtle Ave, Queens, NY 11385")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 315 & Ladder 125 \n Address: 159-06 Union Tpke, Queens, NY 11432")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 260 \n Address: 11-15 37th Ave, Queens, NY 11101 \n Phone: (718) 999-2000")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                        .font(.title)}//end of group
                                                    Group{ Text("\t FDNY Division 14 & Engine 324 \n Address: 108-01 Horace Harding Expy, Queens, NY 11368")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                    }//Group 2
                                                    
                                                }//address
                                            }//end of ZStack (Queens)
                                            
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 350, height: 600)
                                                    .foregroundColor(Color("middleColor"))
                                                    .cornerRadius(20)
                                                
                                                VStack{
                                                    Group{
                                                        Text("Staten Island")
                                                            .font(.title)
                                                            .foregroundColor(.white)
                                                            .bold()
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 153/Ladder 77 \n Address: 74 Broad St, Staten Island, NY 10304 \n Phone: (718) 999-2000")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 166 & Ladder 86 \n Address: 1400 Richmond Ave, Staten Island, NY 10314 \n Phone: (212) 788-2958")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Engine 160/Rescue 5/Division 8 \n Address: 1850 Clove Rd, Staten Island, NY 10304")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                            .font(.title)
                                                        Text("\t FDNY Ladder 79 \n Address: 1189 Castleton Ave, Staten Island, NY 10310")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                        
                                                        Text(" ")
                                                        .font(.title)}//end of group
                                                    Group{ Text("\t FDNY Engine 151/Ladder 76 \n Address: 7219 Amboy Rd, Staten Island, NY 10307")
                                                            .foregroundColor(.white)
                                                            .padding(.horizontal, 31.0)
                                                    }//Group 2
                                                    
                                                }//address
                                            }//end of Zstack Staten Island
                                            
                                            
                                            
                                            
                                            
                                            .foregroundColor(Color("darkColor"))
                                        }//end of ZStack Brooklyn
                                    }//End of VSTACK
                                }//End of ScrollView
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
//    }//End of Struct
//}
  
  struct resourses_Previews: PreviewProvider {
      static var previews: some View {
          resourses()
      }
  }

