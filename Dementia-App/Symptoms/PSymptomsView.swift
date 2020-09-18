//
//  PSymptomsView.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//
import SwiftUI

struct PSymptomsView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.presentationMode) var presentation
    @State private var newSymptom: Bool = false
    @State private var newSymptomName: String = ""
    
    private var pSymptoms = ["Having an unkempt appearance",
                             "Inability to wash body",
                             "Difficulty choosing clothing",
                             "Difficulty brushing teeth",
                             "Trouble wearing clothes",
                             "Inability to sit on toilet",
                             "Difficulty washing hands",
                             "Inability to shave/comb hair",
                             "Convulsions"]
    
    @State var pChecks = [false, false, false, false, false, false, false, false, false]
    
    init() {
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack {
                Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("Physical Symptoms").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                        .padding(.top, geometry.size.height*0.013)
                    
                    List {
//                        addANewSymptom()
                        ForEach(0..<self.pChecks.count) { i in
                            HStack {
                                Text(self.pSymptoms[i])
                                Spacer()
                                Button(action: {
                                    self.pChecks[i].toggle()
                                    print(self.pChecks[i])
                                }) {
                                    if self.pChecks[i] {
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
                        
                        if self.newSymptom {
                            TextField("Enter new symptom name", text: self.$newSymptomName)
                        }
                        
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    .listRowBackground(Color.blue)
                    .frame(width: UIScreen.main.bounds.width*0.9)
                    
                    Button(action: {
                        self.newSymptom = true
                    }) {
                        
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
                            .background(Color.blue)
                            .cornerRadius(10)

                    }
//                    .sheet(isPresented: self.$newSymptom) {
//                        NewSymptom()
//                    }

                    Spacer()
                }
                
            }
            .navigationBarItems(trailing:
                Button("Submit") { self.submitButton() }
            )
        }
    }
    
    func submitButton() { /// func and var names are lowercase
        for i in 0..<pChecks.count {
            print("\(i): \(pChecks[i])")
            if pChecks[i] == true {
                let pSymptom = PSymptomEntity(context: self.managedObjectContext)
                pSymptom.pSymptomName = pSymptoms[i]
                pSymptom.pCreatedAt = Date()
                pSymptom.pCheckedState = pChecks[i]
                CoreDataManager.shared.saveContext()
            }
        }
    }
    
    
    mutating func addANewSymptom() {
        if self.newSymptom {
            TextField("Enter new symptom name", text: self.$newSymptomName)
            self.pChecks.append(true)
            pSymptoms.append(newSymptomName)
        }
        newSymptomName = ""
    }
    
}

struct PSymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        PSymptomsView()
    }
}
