//
//  AcademicInfoScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/2/22.
//

import SwiftUI

struct AcademicInfoScreen: View {
    @State var backbutton = false
    @State var showAcaWeb = false
    @State var showUGProg = false
    @State var showGProg = false
    @State var showDivDep = false
    @State var showCC = false
    @State var showMajDec = false
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

                    
                    Text("Academic Information")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showAcaWeb.toggle()
                    }
                }) {
                    Text("Academics Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showAcaWeb) {
                    NavigationView {
                        WebViewAcadWeb(url: "https://www.ucsc.edu/academics/index.html")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showUGProg.toggle()
                    }
                }) {
                    Text("Undergraduate Programs")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 260, height: 25, alignment: .center)

                }
                .sheet(isPresented: $showUGProg) {
                    NavigationView {
                        WebViewUGProg (url: "https://admissions.ucsc.edu/find-your-program")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showGProg.toggle()
                    }
                }) {
                    Text("Graduate Programs")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showGProg) {
                    NavigationView {
                        WebViewGProg(url: "https://www.gradadmissions.ucsc.edu/graduate-studies")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showDivDep.toggle()
                    }
                                    }) {
                    Text("Divisions/Departments")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showDivDep){
                    NavigationView {
                        WebViewDivDep (url: "https://www.ucsc.edu/academics/divisions.html")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showCC.toggle()
                    }
                }) {
                    Text("Course Catalog")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showCC) {
                    NavigationView {
                        WebViewCC(url: "https://catalog.ucsc.edu/en/Current/General-Catalog")
                    }
                }
                
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showMajDec.toggle()
                    }
                }) {
                    Text("Major Declaration Info")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showMajDec) {
                    NavigationView {
                        WebViewMajDec(url:"https://advising.ucsc.edu/planning/your-major/declaration/index.html")
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
        
        

struct AcademicInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AcademicInfoScreen()
        }
    }
}
