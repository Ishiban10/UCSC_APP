//
//  BeachesScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct BeachesScreen: View {
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

                    
                    Text("Beaches")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=108%20Beach%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=16740426593461416903&ll=36.963780,-122.016840&lsp=9902&q=Main%20Beach&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCGAQoECAoQAAoECFIQCAoECFUQDQoECFkQAQoFCKQBEAESJCnRoR1y33pCQDHW9E4Na4FewDlPd0POBXxCQEFW30vZsoBewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Main Beach")
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
                    if let url = URL(string: "https://maps.apple.com/?address=2531%20W%20Cliff%20Dr,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=15374212367001729770&ll=36.952490,-122.057172&lsp=9902&q=Natural%20Bridges%20State%20Beach&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhASCgQIChABCgQIUhAHCgQIVRAMCgQIWRAGCgUIpAEQARImKZ9Ns9ZXeUJAMTzQ9u8EhF7AOR0j2TJ+ekJAQYgqWsNMg17AUAM%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Natural Bridges")
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
                    if let url = URL(string: "https://maps.apple.com/?address=175%20W%20Cliff%20Dr,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=13693961615323893885&ll=36.961620,-122.024417&lsp=9902&q=Cowell%E2%80%99s%20Beach&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCGAQoECAoQAAoECFIQCAoECFUQDQoECFkQAQoFCKQBEAESJCnRKukX23pCQDFIf3kSooFewDk40I36NXtCQEEsuYrFb4FewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Cowell's Beach")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=701%20W%20Cliff%20Dr,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=13827962286272664797&ll=36.951457,-122.026718&lsp=9902&q=Lighthouse%20Point&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhASCgQIChABCgQIUhAHCgQIVRAOCgQIWRABCgUIpAEQARIkKea2M/M1eUJAMflLLBsRgl7AOWSMWU9cekJAQVmJM+9YgV7A") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Lighthouse Point")
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
                    if let url = URL(string: "https://maps.apple.com/?address=2875%20E%20Cliff%20Dr,%20Santa%20Cruz,%20CA%2095062,%20United%20States&auid=15175983838495184976&ll=36.962160,-121.998786&lsp=9902&q=Twin%20Lakes%20State%20Beach&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCGAQoECAoQAAoECFIQCAoECFUQDQoECFkQAQoFCKQBEAESJimNyBKdoXpCQDFDKJn4SYBewDkLnjj5x3tCQEFTRMHFkX9ewFAE") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Twin Lakes")
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
                    if let url = URL(string: "https://maps.apple.com/?address=703%E2%80%93709%20W%20Cliff%20Dr,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=3792799251485511440&ll=36.951914,-122.028522&lsp=9902&q=Dog%20Beach&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQBAoECFUQAAoECFkQBgoFCKQBEAESJCk868fhunlCQDGaucO45YFewDmIrwLB9XlCQEEc4hzjwIFewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Dog Beach")
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
                RecDesScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }

        
        
    }
}

struct BeachesScreen_Preveiw:PreviewProvider {
    static var previews: some View {
        Group {
            BeachesScreen()
        }
    }
}
