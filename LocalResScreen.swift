//
//  LocalResScreen.swift
//  Slug Central
//
//  Created by Ishaan Das on 1/30/22.
//

import SwiftUI

struct LocalResScreen: View {
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

                    
                    Text("Local Restaurants")
                        .font(.system(size: 30))
                        .frame(alignment: .center)
                
                Button(action: {
                    if let url = URL(string: "https://maps.apple.com/?address=1133%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=8235591786293210237&ll=36.972565,-122.026002&lsp=9902&q=Nick%20the%20Greek&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAUCgQIChAACgQIUhABCgQIVRAQCgQIWRADCgUIpAEQARImKftx+9bpe0JAMU+gIx8Ggl7AOXlHITMQfUJAQRUyF+ZNgV7AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Nick the Greek")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1534%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=11211284903289415699&ll=36.976061,-122.026598&lsp=9902&q=Zoccoli's%20The%20Italian%20Delicatessen&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAUCgQIChAACgQIUhABCgQIVRAPCgQIWRACCgUIpAEQARImKUSuihdcfEJAMRn1i54Ogl7AOcKDsHOCfUJAQTdjVmNWgV7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Zoccoli's")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1543%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=10561253450324770681&ll=36.976245,-122.026988&lsp=9902&q=Pok%C3%A9%20House&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAUCgQIChAACgQIUhABCgQIVRAQCgQIWRADCgUIpAEQARImKSVH8GZefEJAMQzCKLoagl7AOaMcFsOEfUJAQboA6H5igV7AUAM%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Poke House")
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
                    if let url = URL(string: "https://maps.apple.com/?address=139%20Water%20St,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=5602440829238240839&ll=36.977804,-122.025742&lsp=9902&q=Taqueria%20Los%20Pericos&_ext=CjIKBQgEEOIBCgQIBRADCgQIBhAUCgQIChAACgQIUhABCgQIVRAOCgQIWRABCgUIpAEQARImKdO3cSGWfEJAMTIoMbkCgl7AOVGNl328fUJAQRKQ4nxKgV7AUAQ%3D") {
                       UIApplication.shared.open(url)
                    }
                }) {
                    Text("Los Pericos")
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
                    if let url = URL(string: "https://maps.apple.com/?address=1116%20Pacific%20Ave,%20Santa%20Cruz,%20CA%20%2095060,%20United%20States&auid=9381924038146168889&ll=36.972233,-122.025447&lsp=9902&q=Pizza%20My%20Heart&_ext=CjMKBQgEEOIBCgQIBRADCgUIBhC6AgoECAoQAAoECFIQAQoECFUQDgoECFkQAQoFCKQBEAESJilIvhI533tCQDFsG4r++4FewDnGkziVBX1CQEFoErHFQ4FewFAE") {
                       UIApplication.shared.open(url)
                    }

                }) {
                    Text("Pizza My Heart")
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 25, alignment: .center)
                }
                .frame(width: 300, height: 50)
                .background(Color(red: 0.111, green: 0.553, blue: 0.136))
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


struct LocalResScreen_Preview: PreviewProvider {
    static var previews: some View{
        Group {
            LocalResScreen()
        }
    }
}
