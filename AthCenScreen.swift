//
//  AthCenScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI
struct AthCenScreen: View{
    @State var backbutton = false
    var body: some View{
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

                    
                    Text("Athletics Centers")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=119%20Center%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=15405338780017229585&ll=36.965422,-122.027324&lsp=9902&q=Depot%20Park&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhASCgQIChABCgQIUhAHCgQIVRAOCgQIWRABCgUIpAEQARImKaHIpMEZe0JAMYWlz/Uhgl7AOR+eyh1AfEJAQSdissBpgV7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Depot Park")
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
                    if let url = URL(string: "https://maps.apple.com/?address=415%20Walnut%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=15377751808537545117&ll=36.971513,-122.033494&lsp=9902&q=Santa%20Cruz%20High%20School&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCrAgoECAoQAAoECFIQCAoECFUQDQoECFkQAQoFCKQBEAESJCmcylgUx3tCQDH8ZqNJgIJewDkaoH5w7XxCQEGqPT8RyIFewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Santa Cruz High")
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
                    if let url = URL(string: "https://maps.apple.com/?address=140%20Front%20Street,%20Santa%20Cruz,%20CA%2095060,%20United%20States&auid=6689390032181485889&ll=36.968203,-122.023037&lsp=9902&q=Santa%20Cruz%20Warriors&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQAwoECFUQEAoECFkQBgoFCKQBEAESJikPh1vlWntCQDGXqFqL1YFewDmNXIFBgXxCQEHzIwJVHYFewFAD") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Warriors Stadium")
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
                RecDesScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }

    }
}

struct AthCenScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group{
            AthCenScreen()
        }
    }
}
