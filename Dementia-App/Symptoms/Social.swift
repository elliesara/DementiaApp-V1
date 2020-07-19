//
//  Social.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct Social: View {
    
    @Environment(\.presentationMode) var presentationMode
        @State private var socialSymptoms = false
        @State private var impairedVerbal: Bool = false
        @State private var compromisedFamily: Bool = false
        @State private var socialIsolation: Bool = false
        
        var body: some View {
            GeometryReader { geometry in
                
                NavigationView {
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.9529411765, green: 0.8804875016, blue: 0.7963053584, alpha: 1))
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack() {
                                
                            Image(systemName: "person.3.fill")
                                .font(.system(size: geometry.size.width*0.15))
                                .foregroundColor(Color(#colorLiteral(red: 0.4546967149, green: 0.3675074577, blue: 0.307084024, alpha: 1)))
                            
                            Text("Social")
                                .font(.system(size: geometry.size.width*0.1)).fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.4546967149, green: 0.3675074577, blue: 0.307084024, alpha: 1)))
                            Text("Select all that apply")
                                .font(.caption).foregroundColor(Color.blue)
                            
                            VStack {
                            
                                Toggle(isOn: self.$impairedVerbal) {
                                    Text("Impaired Verbal Communication")
                                }.frame(width: geometry.size.width*0.78)
                                    .padding(.bottom)
                                .foregroundColor(Color(#colorLiteral(red: 0.6109603643, green: 0.4864929318, blue: 0.4044164419, alpha: 1)))
                                Toggle(isOn: self.$compromisedFamily) {
                                    Text("Compromised Family Coping")
                                }.frame(width: geometry.size.width*0.78)
                                .padding(.bottom)
                                .foregroundColor(Color(#colorLiteral(red: 0.6117647059, green: 0.4880746603, blue: 0.4047411978, alpha: 1)))
                                Toggle(isOn: self.$socialIsolation) {
                                    Text("Social Isolation")
                                }.frame(width: geometry.size.width*0.78)
                                .padding(.bottom)
                                .foregroundColor(Color(#colorLiteral(red: 0.5345613896, green: 0.4285077164, blue: 0.3562972058, alpha: 1)))
                                
                            }.padding(.top)
                                
                                
//                                HStack{
//                                    Text("Yes")
//                                        .padding(.top,-50)
//                                        .offset(x:104)
//                                    Text("No")
//                                        .padding(.top,-50)
//                                        .padding(.leading,-10)
//                                        .offset(x:140)
//                                }
//                                HStack{
//                                    Text("Disturbed Thought Process")
//                                        .frame(width:300,height:50,alignment: .leading)
//                                        .padding(.top,-50)
//                                        .padding(.leading)
//                                    Circle()
//                                        .fill(Color.white)
//                                        .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                        .frame(width:20,height:20)
//                                        .offset(x:-50,y:-25)
//                                        .padding(.leading,-20)
//                                    Circle()
//                                        .fill(Color.white)
//                                        .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                        .frame(width:20,height:20)
//                                        .offset(y:-25)
//                                        .padding(.leading,-20)
//                                }.padding(.bottom,-150)
//                                HStack{
//                                    Text("Chronic Confusion")
//                                    .frame(width:300, height:50,alignment: .leading)
//                                        .padding(.leading)
//                                    Circle()
//                                        .fill(Color.white)
//                                        .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                        .frame(width:20,height:20)
//                                        .offset(x:-50)
//                                        .padding(.leading,-20)
//                                    Circle()
//                                        .fill(Color.white)
//                                        .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                        .frame(width:20,height:20)
//                                        .padding(.leading,-20)
//                                }
                                
                                Spacer()
                                
                        }
                        .navigationBarItems(leading:
                            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                                Text("Cancel")
                            }, trailing: Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("Submit")
                            })
                }
            }
        }
    }
}

struct Social_Previews: PreviewProvider {
    static var previews: some View {
        Social()
    }
}
