//
//  SocialSymptoms.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct SocialSymptoms: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.presentationMode) var presentation
    @State private var newSymptom: Bool = false
        
    private let sSymptoms = ["Inability to speak properly",
                             "Slurring",
                             "Inability to identify object",
                             "Difficulty forming sentences",
                             "Cognitive impairment",
                             "Hostile Behavior",
                             "Isolation from others",
                             "Unhealthy reliance on others",
                             "Abnormal Stress",
                             "Abnormal Fatigue"]
    
    @State var sChecks = [false, false, false, false, false, false, false, false, false, false]
    
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
                        ForEach(0..<self.sChecks.count) { i in
                            HStack {
                                Text(self.sSymptoms[i])
                                Spacer()
                                Button(action: {
                                    self.sChecks[i].toggle()
                                    print(self.sChecks[i])
                                }) {
                                    if self.sChecks[i] {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5492870212, blue: 1, alpha: 1)))
                                            .font(.system(size: UIScreen.main.bounds.width*0.06))
                                    } else {
                                        Image(systemName: "square.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.9339778938, green: 0.9339778938, blue: 0.9339778938, alpha: 1)))
                                            .font(.system(size: UIScreen.main.bounds.width*0.06))
                                    }
                                }
                            }
                        }
                    }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                     .frame(width: UIScreen.main.bounds.width*0.9)
                        
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
                    Button("Submit") { self.submitButton() }
                )
            }
        }
    }
    
    func submitButton() {
        for i in 0..<sChecks.count {
            print("\(i): \(sChecks[i])")
            if sChecks[i] == true {
                let sSymptom = SSymptomEntity(context: self.managedObjectContext)
                sSymptom.sSymptomName = sSymptoms[i]
                sSymptom.sCreatedAt = Date()
                sSymptom.sCheckedState = sChecks[i]
                CoreDataManager.shared.saveContext()
            }
        }
    }
    
}

struct SocialSymptoms_Previews: PreviewProvider {
    static var previews: some View {
        SocialSymptoms()
    }
}
