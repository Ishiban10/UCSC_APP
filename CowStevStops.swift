//
//  CowStevStops.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/23/22.
//

import SwiftUI

struct CowStevStops: View {
    @State var backbutton = false
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

                    
                    Text("        Bookstore, Cowell/Stevenson")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=11210827858763314239&ll=36.997450,-122.055024&lsp=9902&q=Hagar%20Dr%20(UCSC%20-%20Bookstore,%20Cowell%20%26%20Stevenson)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCnazqIrqX9CQDGxLi4lh4NewDmiiVu5r39CQEFN0VHeg4NewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Lines 18 & 22")
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
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=15907305453681251315&ll=36.996649,-122.055428&lsp=9902&q=Hagar%20Dr%20(UCSC%20-%20Bookstore,%20Cowell%20%26%20Stevenson)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCnYgGXtjn9CQDGPluvEjYNewDmgOx57lX9CQEErOQ9+ioNewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Lines 15 & 19")
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
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=10763442620437692296&ll=36.997368,-122.055492&lsp=9902&q=Hagar%20Dr%20(UCSC%20-%20Bookstore,%20Cowell%20%26%20Stevenson)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCm0XMt3pn9CQDGzLk7QjoNewDl8F4QFrX9CQEFP0XGJi4NewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Lines 10 & 20")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Spacer()
    }
            if backbutton {
                BusScheduleScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
}
        
    }
}

struct CowStevStops_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            CowStevStops()
        }
    }
}
