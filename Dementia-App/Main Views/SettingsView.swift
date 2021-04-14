//
//  SettingsView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
  @FetchRequest(fetchRequest: SettingsEntity.getFontSize()) var font: FetchedResults<SettingsEntity>
    @State private var fontSize: Double = 16
    @State private var notifications: Bool = false
//    init(){
//        UINavigationBar.appearance().barTintColor = .clear
////        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
//    }
    var body: some View {
        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.red,.blue]),startPoint: .leading,endPoint: .trailing)
            //                .edgesIgnoringSafeArea(.all)
            VStack {
                NavigationView {
                    VStack(alignment: .leading) {
                        Group {
                            Spacer()
                                .frame(height: 100)
                            HStack{
                                Text("About")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                                Spacer()
                                    .frame(width: 226)
                                NavigationLink(destination: AboutView()){
                                    Image(systemName: "arrow.right")
                                }
                            }
                            Spacer()
                                .frame(height:25)
                        }
                        Group {
                            Spacer()
                                .frame(height: 20)
                            HStack{
                                Text("Font Size")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                                Spacer()
                                    .frame(width: 50)
                                Slider(value: $fontSize, in: 8...20, step:1)
                                    .frame(width: 150)
                                Text("\(Int(fontSize))")
                            }
                            Spacer()
                                .frame(height:25)
                        }
                        Group {
                            Spacer()
                                .frame(height: 20)
                            Toggle(isOn: self.$notifications){
                                Text("Notifications")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                            }.frame(width:300)
                            Spacer()
                                .frame(height:25)
                        }
                        Group {
                            Spacer()
                                .frame(height: 20)
                            HStack{
                                Text("Account Information")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                                Spacer()
                                    .frame(width:125)
                                NavigationLink(destination: AccountInfoView()){
                                    Image(systemName: "arrow.right")
                                }
                            }
                            Spacer()
                                .frame(height:25)
                        }
                        Group {
                            Spacer()
                                .frame(height: 20)
                            HStack{
                                Text("Reminders")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                                Spacer()
                                    .frame(width:190)
                                NavigationLink(destination: RemindersView()){
                                    Image(systemName: "arrow.right")
                                }
                            }
                            Spacer()
                                .frame(height:25)
                        }
                        Group {
                            Spacer()
                                .frame(height: 20)
                            HStack{
                                Text("Help")
        //                            .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .font(.custom("subheadline",size:CGFloat(fontSize)))
                                Spacer()
                                    .frame(width:235)
                                NavigationLink(destination: HelpView()){
                                    Image(systemName: "arrow.right")
                                }
                            }
                            Spacer()
                                .frame(height:240)
                        }
                    }.navigationBarTitle("Settings")
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
