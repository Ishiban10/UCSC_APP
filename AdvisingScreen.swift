//
//  AdvisingScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/24/22.
//

import SwiftUI

struct AdvisingScreen: View {
    @State var backbutton = false
    @State var showAdvWeb = false
    @State var showSlugSuc = false
    @State var showNav = false
    
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

                    
                    Text("Advising")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showAdvWeb.toggle()
                    }
                }) {
                    Text("Advising Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showAdvWeb) {
                    NavigationView {
                        WebViewAdvWeb(url: "https://advising.ucsc.edu")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showSlugSuc.toggle()
                    }
                }) {
                    Text("Slug Success")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showSlugSuc) {
                    NavigationView {
                        WebViewSlugSuc(url: "https://slugsuccess.ucsc.edu")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showNav.toggle()
                    }
                }) {
                    Text("Navigate")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showNav) {
                    NavigationView {
                        WebViewNav(url: "https://ucsc.navigate.eab.com/app/#/authentication/remote/")
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

struct AdivingScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            AdvisingScreen()
        }
    }
}



