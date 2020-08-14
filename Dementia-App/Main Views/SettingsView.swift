//
//  SettingsView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI
struct SettingsView: View {
    
    @State private var notifications: Bool = false
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Group{
                    HStack{
                        Text("About")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        Spacer()
                            .frame(width: 226)
                        NavigationLink(destination: AboutView()){
                            Image(systemName: "arrow.right")
                        }
                    }
                    Spacer()
                        .frame(height:25)
                }
                Group{
                    HStack{
                        Text("Font Size")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                        .frame(height:25)
                }
                Group{
                    Toggle(isOn: self.$notifications){
                        Text("Notifications")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                    }.frame(width:300)
                    Spacer()
                        .frame(height:25)
                }
                Group{
                    HStack{
                        Text("Account Information")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        Spacer()
                            .frame(width:125)
                        NavigationLink(destination: AccountInfoView()){
                            Image(systemName: "arrow.right")
                        }.navigationBarTitle("Settings")
                    }
                    Spacer()
                        .frame(height:25)
                }
                Group{
                    HStack{
                        Text("Reminders")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                        .frame(height:25)
                }
                Group{
                    HStack{
                        Text("Help")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                        .frame(height:240)
                }
                }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
