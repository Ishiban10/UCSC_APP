//
//  C910Stops.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/23/22.
//

import SwiftUI

struct C910Stops: View{
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

                    
                    Text("College 9/10, Health Ctr")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=11837141080860128540&ll=36.999756,-122.058311&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20College%209%20%26%2010%20/%20Health%20Ctr)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQAgoFCKQBEAESJCkFoFG69H9CQDGCrn0BvYNewDnNWgpI+39CQEEeUaG6uYNewA%3D%3D") {
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
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=316897009124420238&ll=36.999924,-122.058319&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20College%209%20%26%2010%20/%20Health%20Ctr)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQAgoFCKQBEAESJCnB4Jo7+n9CQDHDnQsjvYNewDmJm1PJAIBCQEFfQC/cuYNewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Lines 10, 18, 20, 22")
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


struct C910Stops_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            C910Stops()
        }
    }
}
