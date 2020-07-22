//
//  Mental.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct Mental: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var mentalSymptoms = false
    @State private var disturbedThought: Bool = false
    @State private var chronicConfusion: Bool = false
    @State private var impairedMobility: Bool = false
    @State private var riskForInjury: Bool = false
    @State private var disturbedSense: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationView {
                
                ZStack {
                    Color(#colorLiteral(red: 0.7541411519, green: 0.8313546777, blue: 0.9701576829, alpha: 1))
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack() {
                            
                        Image(systemName: "eye")
                            .font(.system(size: geometry.size.width*0.15))
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        
                        Text("Mental")
                            .font(.system(size: geometry.size.width*0.1)).fontWeight(.bold)
                            .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        Text("Select all that apply")
                            .font(.caption).foregroundColor(Color.blue)
                        
                        VStack {
                        
                            Toggle(isOn: self.$disturbedThought) {
                                Text("Disturbed Thought Processes")
                            }.frame(width: geometry.size.width*0.78)
                                .padding(.bottom)
                                .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            Toggle(isOn: self.$chronicConfusion) {
                                Text("Chronic Confusion")
                            }.frame(width: geometry.size.width*0.78)
                                .padding(.bottom)
                                .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                            
                        }.padding(.top)
                            
                            
//                            HStack{
//                                Text("Yes")
//                                    .padding(.top,-50)
//                                    .offset(x:104)
//                                Text("No")
//                                    .padding(.top,-50)
//                                    .padding(.leading,-10)
//                                    .offset(x:140)
//                            }
//                            HStack{
//                                Text("Disturbed Thought Process")
//                                    .frame(width:300,height:50,alignment: .leading)
//                                    .padding(.top,-50)
//                                    .padding(.leading)
//                                Circle()
//                                    .fill(Color.white)
//                                    .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                    .frame(width:20,height:20)
//                                    .offset(x:-50,y:-25)
//                                    .padding(.leading,-20)
//                                Circle()
//                                    .fill(Color.white)
//                                    .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                    .frame(width:20,height:20)
//                                    .offset(y:-25)
//                                    .padding(.leading,-20)
//                            }.padding(.bottom,-150)
//                            HStack{
//                                Text("Chronic Confusion")
//                                .frame(width:300, height:50,alignment: .leading)
//                                    .padding(.leading)
//                                Circle()
//                                    .fill(Color.white)
//                                    .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                    .frame(width:20,height:20)
//                                    .offset(x:-50)
//                                    .padding(.leading,-20)
//                                Circle()
//                                    .fill(Color.white)
//                                    .overlay(Circle().stroke(Color.gray,lineWidth:2))
//                                    .frame(width:20,height:20)
//                                    .padding(.leading,-20)
//                            }
                            
                            Spacer()
                            
                        }.navigationBarItems(leading:
                            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                                Text("Cancel")
                            }, trailing:
                            NavigationLink(destination: MentalSymptoms()) {
                                Text("Next")
                            })
                }
            }
        }
    }
}

struct Mental_Previews: PreviewProvider {
    static var previews: some View {
        Mental()
    }
}
