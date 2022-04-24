//
//  SSSScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/5/22.
//

import SwiftUI

struct SSSScreen: View {
    @State var backbutton = false
    @State var showLSS = false
    @State var showSuppWeb = false
    @State var showEOP = false
    @State var showACE = false
    @State var showLowInc = false
    @State var showFinAid = false
    @State var showCC = false
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

                    
                    Text("Student Support Services")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
            Group {
                Button(action: {
                    withAnimation(.easeOut) {
                        showSuppWeb.toggle()
                    }
                }) {
                    Text("Support Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showSuppWeb) {
                    NavigationView {
                        WebViewSuppWeb(url: "https://admissions.ucsc.edu/resources-support/support-services")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showEOP.toggle()
                    }
                }) {
                    Text("EOP")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 260, height: 25, alignment: .center)

                }
                .sheet(isPresented: $showEOP) {
                    NavigationView {
                        WebViewEOP(url:"https://eop.ucsc.edu")
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
                        showACE.toggle()
                    }
                }) {
                    Text("ACE")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showACE) {
                    NavigationView {
                        WebViewACE(url: "https://ace.science.ucsc.edu")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Button(action: {
                    withAnimation(.easeOut){
                        showLSS.toggle()
                    }
                }) {
                    Text("Learning Support")
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
                
            Group {
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showLowInc.toggle()
                    }
                }) {
                    Text("Low Income Support")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showLowInc) {
                    NavigationView {
                        WebViewLowInc(url:"https://deanofstudents.ucsc.edu/slug-support/program/")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showFinAid.toggle()
                    }
                }) {
                    Text("Financial Aid")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 260, height: 25, alignment: .center)

                }
                .sheet(isPresented: $showFinAid) {
                    NavigationView {
                        WebViewFinAid(url: "https://financialaid.ucsc.edu/index.html")
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
                            showCC.toggle()
                        }
                    }) {
                        Text("Career Center")
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .font(.system(size: 20))
                            .frame(width: 250, height: 25, alignment: .center)
                    }
                    .sheet(isPresented: $showCC) {
                        NavigationView {
                            WebViewCC(url: "https://careers.ucsc.edu")
                        }
                    }
                    
                    .frame(width: 300, height: 50)
                    .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    
                    
                    Spacer()
                }

                        

                
            }
            if backbutton {
                HomeScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            if showLSS {
                LSSScreen()
                    .transition(AnyTransition.move(edge: .trailing))
            }
            
            }
        
    }
}

struct SSSScreen_Preview: PreviewProvider{
    static var previews: some View {
        Group {
            SSSScreen()
        }
    }
}
