//
//  CampusSpotsScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 2/20/22.
//

import SwiftUI

struct CampusSpotsScreen: View {
    @State var backbutton = false
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

                    
                    Text("Popular Campus Spots")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                Group {
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=2202086124297362384&ll=36.995698,-122.058899&lsp=9902&q=McHenry%20Library&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhANCgQIChAACgQIUhAGCgQIVRAOCgQIWRABCgUIpAEQARImKfZhGPzzfkJAMaV6+rAihF7AOXQ3PlgagEJAQYnbNGlqg17AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("McHenry Library")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=4868662120794980444&ll=36.999091,-122.060766&lsp=9902&q=UCSC%20Science%20%26%20Engineering%20Library&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQCAoECFUQDwoECFkQAQoFCKQBEAESJCmJsQu4V3RCQDHpYTAxHItewDmk0Lg2aYtCQEEYns/+qnxewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("S & E Library")
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
                    if let url = URL(string: "https://maps.apple.com/?address=Steinhart%20Way,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=7988803723062808458&ll=36.998133,-122.061983&lsp=9902&q=Thimann%20Labs&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQBAoECFUQAAoECFkQBgoFCKQBEAESJCkGLZ5lpX9CQDHLYjX3CYRewDlS8dhE4H9CQEFLBdQb5YNewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Thimann Labs")
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
                    if let url = URL(string: "https://maps.apple.com/?address=East%20Field%20Service,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=2927183638566328579&ll=36.994987,-122.054088&lsp=9902&q=OPERS%20-%20East%20Field%20House&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQAwoECFUQDwoECFkQAgoFCKQBEAESJCnpEilJPn9CQDEgtf6YiINewDk112MoeX9CQEHgSgG+Y4NewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("OPERS")
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
                    if let url = URL(string: "https://maps.apple.com/?address=212%20Oakes%20Rd,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=306080996490576507&ll=36.991390,-122.064220&lsp=9902&q=UC%20Santa%20Cruz%20Fitness%20Center&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCRAQoECAoQAAoECFIQAwoECFUQDwoECFkQAgoFCKQBEAESJilRRxVlGn5CQDH/HUuHh4RewDnPHDvBQH9CQEEv6KNDz4NewFAE") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("West Gym")
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
                    if let url = URL(string: "https://maps.apple.com/?address=150%20Heller%20Dr,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=5247688077222011272&ll=36.989279,-122.063320&lsp=9902&q=Oakes%20Caf%C3%A9&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAICgQIChAACgQIUhABCgQIVRAQCgQIWRADCgUIpAEQARImKUlrTzj5fUJAMfAzQu23hF7AOcdAdZQff0JAQSy5O6r/g17AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Oakes Cafe")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.254, green: 0.768, blue: 0.174))
                .cornerRadius(30)
                .shadow(radius: 10)
                }
                
                Group {
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%2095064,%20United%20States&auid=328441736517960131&ll=36.995203,-122.061654&lsp=9902&q=Media%20Theater&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAXCgQIChAACgQIUhACCgQIVRAPCgQIWRACCgUIpAEQARIkKc4iHVDYc0JAMTYgDaUqi17AOYLCxs/pikJAQcrfcqK5fF7A") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Media Theater")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1156%20High%20St,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=6976786757996031508&ll=36.998063,-122.059634&lsp=9902&q=Earth%20%26%20Marine%20Sciences%20Building&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhDfAQoECAoQAAoECFIQCAoECFUQEAoECFkQAQoFCKQBEAESJim0edJpLn9CQDGFh9JMKIRewDkyT/jFVIBCQEEttvEDcINewFAE") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Earth/Marine Science")
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
                    if let url = URL(string: "https://maps.apple.com/?address=353%20McLaughlin%20Dr,%20Santa%20Cruz,%20CA%20%2095064,%20United%20States&auid=17882757641954430927&ll=36.998432,-122.054907&lsp=9902&q=Humanities%20and%20Social%20Sciences&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAZCgQIChAACgQIUhAHCgQIVRAPCgQIWRACCgUIpAEQARImKakI3FA4f0JAMf1qZt3Xg17AOSfeAa1egEJAQQGaVZQfg17AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Humanities/Social Science")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 18))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
                .cornerRadius(30)
                .shadow(radius: 10)
                
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


struct CampusSpotsScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            CampusSpotsScreen()
        }
    }
}
