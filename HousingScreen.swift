//
//  HousingScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/3/22.
//

import SwiftUI

struct HousingScreen: View {
    @State var backbutton = false
    @State var showHouPor = false
    @State var showHouWeb = false
    @State var showOffHou = false
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

                    
                    Text("Housing")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showHouPor.toggle()
                    }
                }) {
                    Text("Housing Portal")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showHouPor) {
                    NavigationView {
                        WebViewHousePor(url: "https://ucsc.starrezhousing.com/StarRezPortal/1A895F1B/1/1/Home-Student_Housing_Port?UrlToken=1B704760")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showHouWeb.toggle()
                    }
                }) {
                    Text("Housing Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showHouWeb) {
                    NavigationView {
                        WebViewHouseWeb(url: "https://housing.ucsc.edu")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showOffHou.toggle()
                    }
                }) {
                    Text("Off Campus Housing")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showOffHou) {
                    NavigationView {
                        WebViewOffHou(url: "https://www.places4students.com/Places/School?SchoolID=%2f7UnHPDakTw%3d")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
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

struct HousingScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            HousingScreen()
        }
    }
}
