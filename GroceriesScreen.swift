//
//  GroceriesScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct GroceriesScreen: View {
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

                    
                    Text("Groceries")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                Group {
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=700%20Front%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=16832332802528275691&ll=36.974513,-122.024760&lsp=9902&q=Trader%20Joe's&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCfAQoECAoQAAoECFIQAQoECFUQDgoECFkQAQoFCKQBEAESJClvfVhgKnxCQDFgFXUa8YFewDntUn68UH1CQEHMNzDgOIFewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Trader Joes")
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
                    if let url = URL(string: "https://maps.apple.com/?address=600%20Front%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=13867122315233318393&ll=36.974024,-122.024326&lsp=9902&q=CVS%20Pharmacy&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhB4CgQIChAACgQIUhABCgQIVRAOCgQIWRABCgUIpAEQARImKWnieIoSfEJAMXBEH9PpgV7AOee3nuY4fUJAQTTMTZkxgV7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("CVS (Front St.)")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1700%20Mission%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=11836046674378932276&ll=36.965435,-122.042670&lsp=9902&q=CVS%20Pharmacy&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhB4CgQIChAACgQIUhABCgQIVRAPCgQIWRACCgUIpAEQARImKaIK2jAAe0JAMaRFXTcXg17AOSDg/4wmfEJAQd66uwJfgl7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("CVS (Mission St.)")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1101%20Fair%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=13545511544806120541&ll=36.959125,-122.046377&lsp=9902&q=New%20Leaf%20Community%20Markets&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCfAQoECAoQAAoECFIQAQoECFUQDwoECFkQAgoFCKQBEAESJCkAObxsMXpCQDFLoOvtU4NewDl+DuLIV3tCQEERhjK9m4JewA%3D%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("New Leaf (Fair Ave.)")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1134%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=1584410472747179328&ll=36.972901,-122.025586&lsp=9902&q=New%20Leaf%20Community%20Markets&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCfAQoECAoQAAoECFIQAQoECFUQEAoECFkQAwoFCKQBEAESJikl+iHM9HtCQDFMmpEz/4FewDmjz0coG31CQEFOIFD6RoFewFAE") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("New Leaf (Pacific Ave.)")
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
                    if let url = URL(string: "https://maps.apple.com/?address=2203%20Mission%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=657262547815889091&ll=36.961380,-122.045231&lsp=9902&q=Safeway&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhCfAQoECAoQAAoECFIQAQoECFUQDQoECFkQAQoFCKQBEAESJimM/LCFcXpCQDHtQcA6PoNewDkK0tbhl3tCQEFbDdEIhoJewFAD") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Safeway")
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
                    if let url = URL(string: "https://maps.apple.com/?address=220%20Sylvania%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=13005817803752786287&ll=36.984352,-122.033976&lsp=9902&q=Costco%20Wholesale&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAWCgQIChAACgQIUhABCgQIVRAMCgQIWRABCgUIpAEQARIkKYg3fA1tfUJAMRoNKVOIgl7AOQYNommTfkJAQQaWyRLQgV7A") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Costco")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.425, green: 0.833, blue: 0.429))
                .cornerRadius(30)
                .shadow(radius: 10)
                }

                Group {
                    Spacer()
                }
            }
            if backbutton {
                RecDesScreen()
                    .transition(AnyTransition.move(edge: .leading))
            }
            }
    }
}


struct GrocereiesScreen_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            GroceriesScreen()
        }
    }
}
