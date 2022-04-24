//
//  ScienceHillStops.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/23/22.
//

import SwiftUI

struct ScienceHillStops: View {
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

                    
                    Text("Science Hill")
                        .font(.system(size: 30))
                        .frame(alignment: .center)

                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=16020578514638483365&ll=36.999855,-122.062172&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20Science%20Hill)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQAgoFCKQBEAESJCmYgcr4939CQDE43bJD/INewDlgPIOG/n9CQEHUf9b8+INewA%3D%3D") {
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
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=5122415977817391004&ll=36.999936,-122.062327&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20Science%20Hill)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJClS7H6f+n9CQDHcdcLN/oNewDkapzctAYBCQEF4GOaG+4NewA%3D%3D") {
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
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=Santa%20Cruz,%20CA,%20United%20States&auid=18122985134172909645&ll=36.999936,-122.062327&lsp=9902&q=McLaughlin%20Dr%20(UCSC%20-%20Science%20Hill)%20Stop&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDYAQoECAoQAAoECFIQCgoECFUQEgoECFkQBgoFCKQBEAESJClS7H6f+n9CQDHcdcLN/oNewDkapzctAYBCQEF4GOaG+4NewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Bus Line 22")
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

struct ScienceHillStops_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            ScienceHillStops()
        }
    }
}
