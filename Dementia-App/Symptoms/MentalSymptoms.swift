//
//  MentalSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct MentalSymptoms: View {
    
    @State private var newSymptom: Bool = false
    
    @State private var decreasedAbilityToReason: Bool = false
    @State private var inabilityToCalculate: Bool = false
    @State private var memoryLoss: Bool = false
    @State private var decreasedAttentionSpan: Bool = false
    @State private var easyDistractibility: Bool = false
    @State private var lackOfInhibitions: Bool = false
    @State private var inappropriateSocialBehavior: Bool = false
    @State private var paranoia: Bool = false
    @State private var explosiveBehavior: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
                
            ZStack() {
                Color(#colorLiteral(red: 0.7568904757, green: 0.8426002264, blue: 0.8870300651, alpha: 1))
                    .edgesIgnoringSafeArea(.all)

                VStack() {
                    Spacer()
                    
                    Text("Mental Symptoms")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                    
                    VStack {
                        Toggle(isOn: self.$decreasedAbilityToReason) {
                            Text("Self-Care Deficit")
                        }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                        Toggle(isOn: self.$inabilityToCalculate) {
                            Text("Disturbed Sleep Pattern")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                        Toggle(isOn: self.$memoryLoss) {
                            Text("Impaired Physical Mobility")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                        Toggle(isOn: self.$decreasedAttentionSpan) {
                            Text("Risk For Injury")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                        Toggle(isOn: self.$easyDistractibility) {
                            Text("Disturbed Sensory Perception")
                        }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                        Toggle(isOn: self.$lackOfInhibitions) {
                            Text("Self-Care Deficit")
                        }.frame(width: geometry.size.width*0.78)
                            .padding(.bottom)
                        Toggle(isOn: self.$inappropriateSocialBehavior) {
                            Text("Disturbed Sleep Pattern")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                        Toggle(isOn: self.$paranoia) {
                            Text("Impaired Physical Mobility")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                        Toggle(isOn: self.$explosiveBehavior) {
                            Text("Risk For Injury")
                        }.frame(width: geometry.size.width*0.78)
                        .padding(.bottom)
                    }.foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                    
                    Spacer()
                    
                    Button(action: { self.newSymptom = true}) {
                        
                        HStack(alignment: .center) {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width * 0.05,
                                        height: geometry.size.height * 0.05)
                            
                            Text("New Symptom")
                                .font(.system(size: geometry.size.width * 0.048))
                                .fontWeight(.bold)
                        }
                        .padding()
                        .foregroundColor(Color(.white))
                        .frame(width: geometry.size.width * 0.5,
                                height: geometry.size.height * 0.063)
                        .background(Color(#colorLiteral(red: 0.4392156863, green: 0.575906992, blue: 0.6412403584, alpha: 1)))
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                }
                       
            }
        }
    }
}


struct MentalSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        MentalSymptoms()
    }
}
