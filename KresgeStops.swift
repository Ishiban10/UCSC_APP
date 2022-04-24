//
//  KresgeStops.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/23/22.
//

import SwiftUI

struct KresgeStops: View {
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

                    
                    Text("Kresge")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=17263959278879024529&ll=36.999207,-122.064339&lsp=9902&q=Heller%20Dr%20%26%20McLaughlin%20Dr%20(UCSC%20-%20Kresge%20College)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCkyGvm84n9CQDGRZcHEH4RewDn61LFK6X9CQEEtCOV9HIRewA%3D%3D") {
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
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=394868217755420045&ll=36.999267,-122.064547&lsp=9902&q=Heller%20Dr%20%26%20McLaughlin%20Dr%20(UCSC%20-%20Kresge%20College)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJCmyM+6x5H9CQDHOajYtI4RewDl67qY/639CQEFqDVrmH4RewA%3D%3D") {
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


struct KresgeStop_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            KresgeStops()
        }
    }
}
