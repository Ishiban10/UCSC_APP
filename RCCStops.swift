//
//  RCCStops.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/23/22.
//

import SwiftUI

struct RCCStops: View {
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

                    
                    Text("Rachel Carson")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=13235492658294641915&ll=36.992827,-122.064945&lsp=9902&q=Heller%20Dr%20(UCSC%20-%20Rachel%20Carson%20College%20%26%20Porter)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCnDk3OxEX9CQDGyLu6yKYRewDmLTiw/GH9CQEFO0RFsJoRewA%3D%3D") {
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
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=333118389041647243&ll=36.992972,-122.065256&lsp=9902&q=Heller%20Dr%20(UCSC%20-%20Rachel%20Carson%20College%20%26%20Porter)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJClyV1pxFn9CQDGxLu7LLoRewDk6EhP/HH9CQEFN0RGFK4RewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Lines 10, 18, 20")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
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


struct RCCStops_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            RCCStops()
        }
    }
}
