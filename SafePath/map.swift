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
                }//end of VSTACK (with initial img and text)
                .padding()
                
                Map(
                   coordinateRegion: $manager.region,
                   interactionModes: MapInteractionModes.all,
                   showsUserLocation: true,
                   userTrackingMode: $tracking
                ).cornerRadius(20)
                    .padding(.vertical, 62.0)


                
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
       
    }
}


struct map_Previews: PreviewProvider {
    static var previews: some View {
        map()
    }
}
