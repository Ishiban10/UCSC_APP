//
//  MapsScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/1/22.
//

import SwiftUI

struct MapsScreen: View {
    @State var backbutton = false
    @State var showCollegeMaps = false
    @State var showCampusSpots = false
    @State var showIntMap = false
    @State var showParkMap = false
    @State var showUppCamp = false
    @State var showWalkMap = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            
                VStack (spacing:10) {
                    Spacer()
                       .frame(height: 30)
                    HStack {
                        Button(action: {
                            withAnimation(.easeOut){
                                backbutton.toggle()
                            }
                        }) {
                            Text("< Back")
                                .font(.system(size:20))
                        }
                        .frame(width: 70, height: 50, alignment: .center)
                        .background(Color.white)
                        .padding(.leading, 10)
                        
                        Spacer()
                    }
                        
                    Text("Maps")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                    
                    Spacer()
                        .frame(height:1)

                    

                        Group {
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showIntMap.toggle()
                                }
                            }) {
                                Text("Interactive Campus Map")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showIntMap) {
                                NavigationView {
                                    WebViewIntMap(url:"https://www.ucsc.edu/map/")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            
                            
                            Button(action: {
                                withAnimation(.easeOut){
                                    showCollegeMaps.toggle()
                                }
                            }) {
                                Text("College Maps")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 280, height: 25, alignment: .center)
                            }
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            //dark greeen
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showParkMap.toggle()
                                }
                            }) {
                                Text("Parking Map")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showParkMap) {
                                NavigationView {
                                    WebViewPark(url: "https://maps.ucsc.edu/printable-maps/parking-map08052019.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            //medium green
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showUppCamp.toggle()
                                }
                            }) {
                                Text("Upper Campus")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showUppCamp) {
                                NavigationView {
                                    WebViewUpCamp(url: "https://maps.ucsc.edu/printable-maps/UCSC_upper_campus_map.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showWalkMap.toggle()
                                }
                            }) {
                                Text("Walking Map")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showWalkMap) {
                                NavigationView {
                                    WebViewWalk(url: "https://maps.ucsc.edu/printable-maps/walking-map-072017.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showCampusSpots.toggle()
                                }
                            }) {
                                Text("Popular Campus Spots")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            

                            
                        }
                        
                        
                    Spacer()

                }
            
            if showCampusSpots {
                CampusSpotsScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if showCollegeMaps {
                CollegeMapsScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            if backbutton {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
        
        }
    }
}


struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MapsScreen()
        }
    }
}
