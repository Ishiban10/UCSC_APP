//
//  HealthServicesScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/2/22.
//

import SwiftUI

struct HealthServicesScreen: View {
    @State var backbutton = false
    @State var showHealWeb = false
    @State var showMess = false
    @State var showAppt = false
    @State var showHours = false
    var body: some View  {
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

                    
                    Text("Student Health Services")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showHealWeb.toggle()
                    }
                }) {
                    Text("Health Center Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showHealWeb) {
                    NavigationView {
                        WebViewHealWeb(url: "https://healthcenter.ucsc.edu")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showMess.toggle()
                    }
                }) {
                    Text("Health e-Messenger")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showMess) {
                    NavigationView {
                        WebViewHealMess(url: "https://healthcenter.ucsc.edu/information/health-e-messenger-new.html")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showAppt.toggle()
                    }
                }) {
                    Text("Appointments")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showAppt){
                    NavigationView {
                        WebViewAppt(url: "https://healthcenter.ucsc.edu/information/make-appointment.html")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showHours.toggle()
                    }
                }) {
                    Text("Hours")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showHours) {
                    NavigationView {
                        WebViewHealHours(url: "https://healthcenter.ucsc.edu/location/index.html")
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
            }
        
        
    }
}

struct HealthServicesScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HealthServicesScreen()
        }
    }
}
