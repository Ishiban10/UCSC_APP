//
//  LSSScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/4/22.
//

import SwiftUI

struct LSSScreen: View {
    @State var backbutton = false
    @State var showLSSWeb = false
    @State var showTT = false
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

                    
                    Text("Learning Support Services")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showLSSWeb.toggle()
                    }
                }) {
                    Text("LSS Website")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showLSSWeb) {
                    NavigationView {
                        WebViewLSS(url: "https://lss.ucsc.edu")
                    }
                }
               
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    withAnimation(.easeOut) {
                        showTT.toggle()
                    }
                }) {
                    Text("Tutor Trac")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .sheet(isPresented: $showTT) {
                    NavigationView {
                        WebViewTT(url: "https://lss.ucsc.edu/tutor-trac/tutor-trac-20-21.html")
                    }
                }
               
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                                
                Spacer()
    }
            if backbutton {
                SSSScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
}
        
    }
}


struct LSSScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            LSSScreen()
        }
    }
}
