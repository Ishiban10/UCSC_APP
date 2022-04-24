//
//  TravelScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI
struct TravelScreen: View{
    @State var backbutton = false
    @State var showBusStops = false
    @State var showBusLines = false
    @State var showDestinations = false
    @State var showLoop = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            VStack {
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

                    
                    Text("Travel")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    withAnimation(.easeOut){showBusStops.toggle()
                        
                    }
                }) {
                    Text("Bus Stops")
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
                    withAnimation(.easeOut){
                        showBusLines.toggle()
                    }
                }) {
                    Text("Bus Lines")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Button(action: {
                    withAnimation(.easeOut){
                        showDestinations.toggle()
                    }
                }) {
                    Text("Recommended Destinations")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 17))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showLoop.toggle()
                    }
                }) {
                    Text("Loop Bus")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showLoop) {
                    NavigationView {
                        WebViewLoop(url: "https://taps.ucsc.edu/pdf/day-night-shuttle-schedule-2016.pdf")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)


                Spacer()
            }
            if backbutton {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            if showBusStops {
                BusScheduleScreen()
                    .transition(AnyTransition.move(edge: .trailing))
                
            }
            if showBusLines {
                BusLinesScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            if showDestinations {
                RecDesScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            }

    }
        
    }

struct TravelScreen_Preview: PreviewProvider{
    static var previews: some View {
        Group {
            TravelScreen()
        }
    }
}
