//
//  PSymptomsCD.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 7/10/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//
import SwiftUI
import CoreData

struct PSymptomsCD: View {
    
    @Environment(\.presentationMode) var presentation
    @Environment(\.managedObjectContext) var managedObjectContext
    @State private var newSymptom: Bool = false
//    @State private var checkStates: [Bool]
    
//    @State private var unkempt: Bool = false
//    @State private var washBody: Bool = false
//    @State private var clothing: Bool = false
//    @State private var teeth: Bool = false
//    @State private var wearing: Bool = false
//    @State private var toilet: Bool = false
//    @State private var hands: Bool = false
//    @State private var hair: Bool = false
//    @State private var convulsion: Bool = false
    
    private let pSymptoms = ["Having an unkempt appearance",
                             "Inability to wash body",
                             "Difficulty choosing clothing",
                             "Difficulty brushing teeth",
                             "Trouble wearing clothes",
                             "Inability to sit on toilet",
                             "Difficulty washing hands",
                             "Inability to shave/comb hair",
                             "Convulsions"]
    
    @State var pChecks = [false,
                          false,
                          false,
                          false,
                          false,
                          false,
                          false,
                          false,
                          false]
    
    //var pChecks = [CheckMark]() /// not putting value in it, type of CheckMark arr
    
    /// needed to make the List match the background color
//    init() {
//        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
//        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
//        UITableView.appearance().tableFooterView = UIView()
//        pChecks = makeCheckMarkArray()
//    }
    
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
                        
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                    .listRowBackground(Color.blue)
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
                            .background(Color(#colorLiteral(red: 0, green: 0.5492870212, blue: 1, alpha: 1)))
                            .cornerRadius(10)
                        
                    }.sheet(isPresented: self.$newSymptom) {
                        NewSymptom()
                    }
                    
                    Spacer()
                    
                }
                .navigationBarItems(trailing:
                    Button(action: {
                        self.submitButton()
                    }) {
                        Text("Submit")
                })
            }
        }
    }
    
    func submitButton() { /// func and var names are lowercase
        for i in 0..<pChecks.count {
            print("submit \(i): \(pChecks[i])")
            let pSymptom = PSymptomEntity(context: self.managedObjectContext)
            if pChecks[i] == true {
                pSymptom.pSymptomName = pSymptoms[i]
                pSymptom.pCreatedAt = Date()
                pSymptom.pCheckedState = pChecks[i]
                print("---- added ----")
                print("pSymptom: \(pSymptom)")
            }
        }
        CoreDataManager.shared.saveContext()
    }
    
//    func makeCheckMarkArray() -> [CheckMark] {
//        var array = [CheckMark]() /// make empty checkmark array
//        if pChecks.count == 0 {
//            print("<<< makeCheckMarkArray >>>")
//            for i in 0..<pSymptoms.count {
//                array.append(CheckMark())
//                print("\(i): \(CheckMark().checkState)")
//            }
//        }
//        return array
//    }
    
}

struct PSymptomsCD_Previews: PreviewProvider {
    static var previews: some View {
        PSymptomsCD()
    }
}


/// switches if needed
//                VStack {
//                    Toggle(isOn: self.$unkempt) {
//                        Text("Having an unkempt appearance")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$washBody) {
//                        Text("Inability to wash body")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$clothing) {
//                        Text("Difficulty choosing clothing")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$teeth) {
//                        Text("Difficulty brushing teeth")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$wearing) {
//                        Text("Trouble with wearing clothes")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$toilet) {
//                        Text("Inability to sit on toilet")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$hands) {
//                        Text("Difficulty Washing Hands")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$hair) {
//                        Text("Inability to Shave/Comb Hair")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                    Toggle(isOn: self.$convulsion) {
//                        Text("Convulsions")
//                    }.frame(width: geometry.size.width*0.78)
//                    .padding(.bottom)
//                }.foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1))).padding(.top, geometry.size.height*0.02)
