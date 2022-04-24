//
//  CollegeMapScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/20/22.
//

import SwiftUI

struct CollegeMapsScreen: View {
    @State var backbutton = false
    @State var showC9 = false
    @State var showCow = false
    @State var showCrown = false
    @State var showKres = false
    @State var showMerr = false
    @State var showOak = false
    @State var showPort = false
    @State var showRCC = false
    @State var showStev = false
    @State var showCMApmt = false
    @State var showRedApmt = false
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
                        
                    Text("College Maps")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                    
                    

                        Group {
    
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showC9.toggle()
                                }
                            }) {
                                Text("College Nine/Ten")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showC9) {
                                NavigationView {
                                    WebViewC9(url: "https://maps.ucsc.edu/printable-maps/Colleges_9-10.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showCow.toggle()
                                }
                            }) {
                                Text("Cowell College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showCow) {
                                NavigationView {
                                    WebViewCow(url: "https://maps.ucsc.edu/printable-maps/cowell_9-17.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showCrown.toggle()
                                }
                            }) {
                                Text("Crown College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showCrown) {
                                NavigationView {
                                    WebViewCrown(url: "https://maps.ucsc.edu/printable-maps/Crown_College.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showKres.toggle()
                                }
                            }) {
                                Text("Kresge College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showKres) {
                                NavigationView {
                                    WebViewKres(url: "https://maps.ucsc.edu/printable-maps/Kresge_College_Aug_2015.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showMerr.toggle()
                                }
                            }) {
                                Text("Merrill College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showMerr) {
                                NavigationView {
                                    WebViewMerr(url: "https://maps.ucsc.edu/printable-maps/Merrill_College010215.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showOak.toggle()
                                }
                            }) {
                                Text("Oakes College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showOak) {
                                NavigationView {
                                    WebViewOak(url: "https://maps.ucsc.edu/printable-maps/Oakes_College.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showPort.toggle()
                                }
                            }) {
                                Text("Porter College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showPort) {
                                NavigationView {
                                    WebViewPort(url: "https://maps.ucsc.edu/printable-maps/Porter_College_2015.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showRCC.toggle()
                                }
                            }) {
                                Text("Rachel Carson College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showRCC) {
                                NavigationView {
                                    WebViewRCC(url: "https://maps.ucsc.edu/printable-maps/rachel_carson_college_3-18.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showStev.toggle()
                                }
                            }) {
                                Text("Stevenson College")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 250, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showStev) {
                                NavigationView {
                                    WebViewStev(url: "https://maps.ucsc.edu/printable-maps/stevenson_9-17.pdf")
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
                                    showCMApmt.toggle()
                                }
                            }) {
                                Text("Crown/Merrill Apartments")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 260, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showCMApmt) {
                                NavigationView {
                                    WebViewCMApmt(url: "https://maps.ucsc.edu/printable-maps/Crown_Merrill_Apts.pdf")
                                }
                            }
                            
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                            .cornerRadius(30)
                            .shadow(radius: 10)
                            
                            Button(action: {
                                withAnimation(.easeOut) {
                                    showRedApmt.toggle()
                                }
                            }) {
                                Text("Redwood Grove Apartments")
                                    .foregroundColor(Color.white)
                                    .padding(.all)
                                    .font(.system(size: 20))
                                    .frame(width: 280, height: 25, alignment: .center)
                            }
                            .sheet(isPresented: $showRedApmt) {
                                NavigationView {
                                    WebViewRedApmt(url: "https://maps.ucsc.edu/printable-maps/Redwood_Grove_Apartments.pdf")
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
                MapsScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
        
        }
    }
}


struct CollegeMapScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CollegeMapsScreen()
        }
    }
}
