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
    
    /// needed to make the List match the background color
    
    init(){
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.7541411519, green: 0.8313546777, blue: 0.9701576829, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.7541411519, green: 0.8313546777, blue: 0.9701576829, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                Color(#colorLiteral(red: 0.7541411519, green: 0.8313546777, blue: 0.9701576829, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                    
                VStack() {
                    
                    Text("Mental Symptoms").fontWeight(.bold).font(.largeTitle).foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                        .padding(.top, geometry.size.height*0.013)
                    
//                VStack {
//                    Toggle(isOn: self.$decreasedAbilityToReason) {
//                        Text("Self-Care Deficit")
//                    }.frame(width: geometry.size.width*0.78)
//                        .padding(.bottom)
//                    Toggle(isOn: self.$inabilityToCalculate) {
//                        Text("Disturbed Sleep Pattern")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$memoryLoss) {
//                        Text("Impaired Physical Mobility")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$decreasedAttentionSpan) {
//                        Text("Risk For Injury")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$easyDistractibility) {
//                        Text("Disturbed Sensory Perception")
//                    }.frame(width: geometry.size.width*0.78)
//                        .padding(.bottom)
//                    Toggle(isOn: self.$lackOfInhibitions) {
//                        Text("Self-Care Deficit")
//                    }.frame(width: geometry.size.width*0.78)
//                        .padding(.bottom)
//                    Toggle(isOn: self.$inappropriateSocialBehavior) {
//                        Text("Disturbed Sleep Pattern")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$paranoia) {
//                        Text("Impaired Physical Mobility")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$explosiveBehavior) {
//                        Text("Risk For Injury")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                }.foregroundColor(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
                    
                    List {
                        HStack { Text("Having an unkempt appearance"); Spacer(); CheckMark() }
                        HStack { Text("Inability to wash body"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty choosing clothing"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty brushing teeth"); Spacer(); CheckMark() }
                        HStack { Text("Trouble with wearing clothes"); Spacer(); CheckMark() }
                        HStack { Text("Inability to sit on toilet"); Spacer(); CheckMark() }
                        HStack { Text("Difficulty Washing Hands"); Spacer(); CheckMark() }
                        HStack { Text("Inability to Shave/Comb Hair"); Spacer(); CheckMark() }
                        HStack { Text("Convulsions"); Spacer(); CheckMark() }
                    }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1))).frame(width: UIScreen.main.bounds.width*0.9)
                    
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
                        .background(Color(#colorLiteral(red: 0.6043982389, green: 0.6650630815, blue: 0.7846405509, alpha: 1)))
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
