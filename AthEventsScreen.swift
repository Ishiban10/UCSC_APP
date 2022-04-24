//
//  AthEventsScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/5/22.
//

import SwiftUI

struct AthEventsScreen: View {
    @State var backbutton = false
    @State var showAthCal = false
    @State var showRec = false
    @State var showIM = false
    @State var showClub = false
    @State var showAdvRec = false
    @State var showRecRent = false
    @State var showPersTrain = false
    @State var showFitLife = false
    @State var showHours = false
    @State var showReserv = false
    var body: some View {
        ZStack {
            Color(white: 1.0).ignoresSafeArea()
            ScrollView {
                LazyVStack {
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

                     
                     Text("Athletics")
                         .font(.system(size: 30))
                         .frame(alignment: .center)

                 Group {
                     Button(action: {
                         withAnimation(.easeOut) {showAthCal.toggle()}
                     }) {
                         Text("Athletics Calendar")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showAthCal) {
                         NavigationView {
                                 WebViewAthCal(url: "https://goslugs.com/calendar")
                             }
                         }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                 
                     Button(action: {
                         withAnimation(.easeOut){
                             showRec.toggle()
                         }
                     }) {
                         Text("Recreation Website")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showRec) {
                         NavigationView {
                                 WebViewRec(url: "https://recreation.ucsc.edu")
                             }
                         }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                  
                     Button(action: {
                         withAnimation(.easeOut) {
                             showIM.toggle()
                         }
                     }) {
                         Text("Intermurals")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showIM) {
                         NavigationView {
                                 WebViewIM(url: "https://recreation.ucsc.edu/intramuralsports/index.html")
                             }
                         }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                     
                     Button(action: {
                         withAnimation(.easeOut) {
                             showClub.toggle()
                         }
                     }) {
                         Text("Sport Clubs")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showClub) {
                         NavigationView {
                                 WebViewClub(url: "https://recreation.ucsc.edu/sportclubs/index.html")
                             }
                         }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                 }
                 
                 Group {
                     Button(action: {
                         withAnimation(.easeOut) {
                             showAdvRec.toggle()
                         }
                     }) {
                         Text("Adventure Rec")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showAdvRec) {
                         NavigationView {
                                 WebViewAdvRec(url: "https://recreation.ucsc.edu/adventure/index.html")
                             }
                         }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                 
                     Button(action: {
                         withAnimation(.easeOut) {
                             showRecRent.toggle()
                         }
                     }) {
                         Text("Rec Rental")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showRecRent) {
                         NavigationView {
                             WebViewRecRent(url: "https://recreation.ucsc.edu/adventure/rec-rental.html")
                         }
                     }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                
                     Button(action: {
                         withAnimation(.easeOut) {
                             showPersTrain.toggle()
                         }
                     }) {
                         Text("Personal Training")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showPersTrain) {
                         NavigationView {
                             WebViewPersTrain (url: "https://recreation.ucsc.edu/fitlife/personalfitness/personal-training/index.html")
                         }
                     }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                
                     Button(action: {
                         withAnimation(.easeOut) {
                             showFitLife.toggle()
                         }
                     }) {
                         Text("FitLife")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showFitLife) {
                         NavigationView {
                             WebViewFitLife (url: "https://recreation.ucsc.edu/fitlife/index.html")
                         }
                     }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                     
                     Button(action: {
                         withAnimation(.easeOut) {
                             showHours.toggle()
                         }
                     }) {
                         Text("Facility Hours")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showHours) {
                         NavigationView {
                             WebViewHours (url: "https://recreation.ucsc.edu/facilities/index.html")
                         }
                     }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                     //"https://campusrec.ucsc.edu/Facility/GetSchedule"
                     Button(action: {
                         withAnimation(.easeOut) {
                             showReserv.toggle()
                         }
                     }) {
                         Text("Reservations")
                             .foregroundColor(Color.white)
                             .padding(.all)
                             .font(.system(size: 20))
                             .frame(width: 250, height: 25, alignment: .center)
                     }
                     .sheet(isPresented: $showReserv) {
                         NavigationView {
                             WebViewReserv(url: "https://campusrec.ucsc.edu/Facility/GetSchedule")
                         }
                     }
                     
                     .frame(width: 300, height: 50)
                     .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                     .cornerRadius(30)
                     .shadow(radius: 10)
                     
                     Spacer()
                 }
                 
                 
                                 
                 
     }
            }
             if backbutton {
                 EventCalendarScreen()
                     .transition(AnyTransition.move(edge: .leading))
             }
 }
    }
}


struct AthEventsScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group{
            AthEventsScreen()
        }
    }
}
