//
//  map.swift
//  SafePath
//
//  Created by Scholar on 6/28/23.
//hgdhg
//KDJSKJASKHSALJSLAKDJKSALJDLKSADJKLASJDKLSA
import SwiftUI
import CoreLocation
import MapKit

struct map: View {
    //navistuff
    init() {
        // Customize the navigation bar appearance
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color("darkColor"))
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    //end of navi stuff
    //map stuff
    @State var region = MKCoordinateRegion(
        center:  CLLocationCoordinate2D(
          latitude: 36.789467,
          longitude:78.416772
        ),
        span: MKCoordinateSpan(
          latitudeDelta: 0.5,
          longitudeDelta: 0.5
       )
    )
    
    @StateObject var manager = LocationManager()
    @State var tracking:MapUserTrackingMode = .follow
    //end of map stuff
    
    var body: some View {
        NavigationView {
            ZStack{
                Color("mainColor")
                    .ignoresSafeArea()
                VStack {
                    // PUT MAIN STUFF HERE !!
                    ZStack{
                      Color("blueColor")
                        .cornerRadius(20)
                        .frame(height: 50)

                      Text("Map")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("mainColor"))
                    }
                    .padding(.top, 20.0)
                
                Map(
                   coordinateRegion: $manager.region,
                   interactionModes: MapInteractionModes.all,
                   showsUserLocation: true,
                   userTrackingMode: $tracking
                ).cornerRadius(20)
                        .padding(.vertical, 35.0)
                
                //sms
                    ZStack{
                        Color("redColor")
                                 .cornerRadius(20)
                                 .frame(width: 250, height: 50)
                        Button(action: {
                            sendMessage()
                        }, label: {
                            Text("SEND LOCATION")
                                .foregroundColor(Color("mainColor"))
                        })
                    }
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("redColor"))
                //sms
                }//end of VSTACK (with initial img and text)
                .padding()


                
            }//end of ZSTACK (app background color)
            .navigationBarItems( leading:
                                    HStack{
                Image("headApp")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 3.0)
                
                Spacer()

                
                ZStack{
                    NavigationLink(destination: menu()) {
                        Image("menu")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    }
                    
                }
                
            } // end HSTACK (header icons)
            ) // end NAV ITEMS
        }//end of NAV VIEW
       
    }
    //sms
    func sendMessage(){
        let sms: String = "HELP! EMERGENCY REPORT!!  sms:+19842843213&body= Location: Longitude = \(manager.getLongitude()) Latitude = \(manager.getLatitude())"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
    //sms
    
}


struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}
