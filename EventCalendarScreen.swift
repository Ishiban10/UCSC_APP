//
//  EventCalendarScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 12/31/21.
//

import SwiftUI

struct EventCalendarScreen: View {
    @State var backbutton = false
    @State var showAthEv = false
    @State var showArtEv = false
    @State var showAcadEv = false
    @State var showResEv = false
    @State var showSciTechEv = false
    @State var showProDevEv = false
    @State var showSustEv = false
    @State var showDivIncEv = false
    @State var showHealEv = false
    @State var showGenEv = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            ScrollView {
                LazyVStack{

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
                        
                        
                    Text("Events/Activities")
                        .font(.system(size: 30))
                    
                    
                    Group {
                    
                        
                        Button(action: {
                            withAnimation(.easeOut){
                                showAthEv.toggle()
                            }
                        }) {
                            Text("Athletics")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showArtEv.toggle()
                            }
                        }) {
                            Text("Arts and Culture")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showArtEv) {
                            NavigationView {
                                WebViewArtEv (url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129136")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showAcadEv.toggle()
                            }
                        }) {
                            Text("Academic")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showAcadEv) {
                            NavigationView {
                                WebViewAcadEv(url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129135")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        //"https://calendar.ucsc.edu/calendar?event_types%5B%5D=129139"
                        Button(action: {
                            withAnimation(.easeOut) {
                                showResEv.toggle()
                            }
                        }) {
                            Text("Research")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showResEv) {
                            NavigationView {
                                WebViewResEv(url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129139")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showSciTechEv.toggle()
                            }
                        }) {
                            Text("Science and Technology")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 270, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showSciTechEv) {
                            NavigationView {
                                WebViewSciTechEv(url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129140")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                    
                        Button(action: {
                            withAnimation(.easeOut) {
                                showProDevEv.toggle()
                            }
                        }) {
                            Text("Professional Developement")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 18))
                                .frame(width: 270, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showProDevEv){
                            NavigationView {
                                WebViewProDevEv(url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=135206")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showSustEv.toggle()
                            }
                        }) {
                            Text("Sustainability")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showSustEv) {
                            NavigationView {
                                WebViewSustEv (url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129141")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showDivIncEv.toggle()
                            }
                        }) {
                            Text("Diversity and Inclusion")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showDivIncEv) {
                            NavigationView {
                                WebViewDivIncEv (url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129137")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showHealEv.toggle()
                            }
                        }) {
                            Text("Health and Wellness")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showHealEv) {
                            NavigationView {
                                WebViewHealEv(url: "https://calendar.ucsc.edu/calendar?event_types%5B%5D=129138")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        
                        
                        Button(action: {
                            withAnimation(.easeOut) {
                                showGenEv.toggle()
                            }
                        }) {
                            Text("General Event Calendar")
                                .foregroundColor(Color.white)
                                .padding(.all)
                                .font(.system(size: 20))
                                .frame(width: 250, height: 25, alignment: .center)
                        }
                        .sheet(isPresented: $showGenEv) {
                            NavigationView {
                                WebViewGenEv(url: "https://calendar.ucsc.edu")
                            }
                        }
                        
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(.bottom)
                    
                
                    }
                Spacer()
                .frame(height:20)
            }
            }

            if backbutton {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            
            if showAthEv {
                AthEventsScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
        }
    }
}


struct EventCalendarScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EventCalendarScreen()
        }
    }
}
