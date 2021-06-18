//
//  PSymptomsViewTest.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/18/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//
import SwiftUI

struct PSymptomsViewTest: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.presentationMode) var presentationMode
    @FetchRequest(fetchRequest: PSymptomListEntity.getPSymptomList()) var pSymptomsList: FetchedResults<PSymptomListEntity>
    @State private var newSymptom: Bool = false
    @State private var newSymptomAdded: Bool = false
    @State private var newSymptomName: String = ""
    
    init() {
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)
        UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationView {
                
                ZStack {
                    Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)).edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        
                        Text("Physical Symptoms").font(.largeTitle).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
                        Text("Select all that apply").font(.caption).foregroundColor(Color.blue)
                            .padding(.top, geometry.size.height*0.013)
                        
                        List {
                            ForEach(self.pSymptomsList) { pSymptom in
                                PSymptomCell(pSym: pSymptom).listRowBackground(Color(#colorLiteral(red: 0.7568627451, green: 0.8426002264, blue: 0.8870300651, alpha: 1)))
                            }
                            
                            if self.newSymptom {
                                TextField("Enter new symptom name", text: self.$newSymptomName)
                            }
                            
                        }
                        .foregroundColor(Color(#colorLiteral(red: 0.2928513885, green: 0.2821008563, blue: 0.2951488495, alpha: 1)))
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
                            
                        }.sheet(isPresented: self.$newSymptom) {
                            NewSymptom()
                        }
                        
                        Spacer()
                    }
                    
                }
                .navigationBarItems(leading:
                    Button("Cancel") { self.presentationMode.wrappedValue.dismiss() }, trailing:
                    Button("Submit") {
                        self.submitButton()
                        self.presentationMode.wrappedValue.dismiss()
                    }
                )
                
            }
        }
    }
    
    func submitButton() { /// func and var names are lowercase
        for i in 0..<pSymptomsList.count {
            if pSymptomsList[i].pState {
                let pSymptom = PSymptomEntity(context: self.managedObjectContext)
                pSymptom.pSymptomName = pSymptomsList[i].pName
                pSymptom.pCreatedAt = Date()
                pSymptom.pCheckedState = pSymptomsList[i].pState
            }
        }
        CoreDataManager.shared.saveContext()
    }
    
    func addANewSymptom() {
        let newPSymptom = PSymptomListEntity(context: self.managedObjectContext)
        newPSymptom.pName = newSymptomName
        newPSymptom.pState = false
        CoreDataManager.shared.saveContext()
    }
}

struct PSymptomCell: View {

    var pSym: FetchedResults<PSymptomListEntity>.Element
    
    var body: some View {
        HStack {
            Text(pSym.pName)
            
            Spacer()
            
            if pSym.pState {
                Image(systemName: "checkmark.square.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5492870212, blue: 1, alpha: 1)))
                    .font(.system(size: UIScreen.main.bounds.width*0.06))
            } else {
                Image(systemName: "square.fill")
                    .foregroundColor(Color(#colorLiteral(red: 0.9339778938, green: 0.9339778938, blue: 0.9339778938, alpha: 1)))
                    .font(.system(size: UIScreen.main.bounds.width*0.06))
            }
        }.contentShape(Rectangle())
        .onTapGesture {
            pSym.pState.toggle()
            print(pSym.pState)
        }
    }
}

struct PSymptomsViewTest_Previews: PreviewProvider {
    static var previews: some View {
        PSymptomsViewTest()
    }
}
