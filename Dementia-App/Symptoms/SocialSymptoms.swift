//
//  SocialSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct SocialSymptoms: View {
    
        @Environment(\.presentationMode) var presentation
        @State private var newSymptom: Bool = false
        
        @State private var unkempt: Bool = false
        @State private var washBody: Bool = false
        @State private var clothing: Bool = false
        @State private var teeth: Bool = false
        @State private var wearing: Bool = false
        @State private var toilet: Bool = false
        @State private var hands: Bool = false
        @State private var hair: Bool = false
        @State private var convulsion: Bool = false

        /// needed to make the List match the background color
        init(){
            UITableView.appearance().backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.8804875016, blue: 0.7963053584, alpha: 1)
            UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.8804875016, blue: 0.7963053584, alpha: 1)
            UITableView.appearance().tableFooterView = UIView()
        }
    
        var body: some View {
            GeometryReader { geometry in
                
                ZStack {
                    Color(#colorLiteral(red: 0.9529411765, green: 0.8804875016, blue: 0.7963053584, alpha: 1))
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        
                        Text("Social Symptoms").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                            .padding(.top, geometry.size.height*0.013)
                        
                        List {
                            HStack { Text("Fatigue"); Spacer(); CheckMark() }
                            HStack { Text("Anxiety"); Spacer(); CheckMark() }
                            HStack { Text("Financial Insecurity"); Spacer(); CheckMark() }
                            HStack { Text("Uncommunicative"); Spacer(); CheckMark() }
                            HStack { Text("Withdrawn"); Spacer(); CheckMark() }
                            HStack { Text("Cognitive Impairment"); Spacer(); CheckMark() }
                            HStack { Text("Impaired Sleep Pattern"); Spacer(); CheckMark() }
                            HStack { Text("Hostile Behavior"); Spacer(); CheckMark() }
                            HStack { Text("Isolation From Others"); Spacer(); CheckMark() }
                        }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1))).frame(width: UIScreen.main.bounds.width*0.9)
                        
                        Button(action: { self.newSymptom = true }) {

                            HStack(alignment: .center) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width*0.05, height: geometry.size.height*0.05)

                                Text("New Symptom")
                                    .font(.system(size: geometry.size.width*0.048))
                                    .fontWeight(.bold)
                            }
                            .padding()
                            .foregroundColor(Color.white)
                            .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.063)
                            .background(Color(#colorLiteral(red: 0.7907425724, green: 0.72770939, blue: 0.6657392306, alpha: 1)))
                            .cornerRadius(10)

                        }.sheet(isPresented: self.$newSymptom) {
                            NewSymptom()
                        }
                        
                        Spacer()
                        
                    }
                    .navigationBarItems(trailing:
                        Button(action: { self.presentation.wrappedValue.dismiss() }) {
                            Text("Submit")
                    })
            }
        }
    }
}

struct SocialSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        SocialSymptoms()
    }
}
