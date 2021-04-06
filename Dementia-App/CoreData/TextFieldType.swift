//
//  TextFieldType.swift
//  Dementia-App
//
//  Created by Ellie Sara Huang on 9/26/20.
//  Copyright © 2020 Neuroscience Amador Valley. All rights reserved.
//

import SwiftUI

struct KeyboardTypeView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var focused: [Bool] = [true, false]
    
    var body: some View {
        Form {
            Section(header: Text("Your Info")) {
                TextFieldTyped(keyboardType: .default, returnVal: .next, tag: 0, text: self.$firstName, isfocusAble: self.$focused)
                TextFieldTyped(keyboardType: .default, returnVal: .done, tag: 1, text: self.$lastName, isfocusAble: self.$focused)
                Text("Full Name :" + self.firstName + " " + self.lastName)
            }
        }
    }
}



struct TextFieldTyped: UIViewRepresentable {
    let keyboardType: UIKeyboardType
    let returnVal: UIReturnKeyType
    let tag: Int
    @Binding var text: String
    @Binding var isfocusAble: [Bool]
    
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.keyboardType = self.keyboardType
        textField.returnKeyType = self.returnVal
        textField.tag = self.tag
        textField.delegate = context.coordinator
        textField.autocorrectionType = .no
        
        return textField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        if isfocusAble[tag] {
            uiView.becomeFirstResponder()
        } else {
            uiView.resignFirstResponder()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: TextFieldTyped
        
        init(_ textField: TextFieldTyped) {
            self.parent = textField
        }
        
        func updatefocus(textfield: UITextField) {
            textfield.becomeFirstResponder()
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            if parent.tag == 0 {
                parent.isfocusAble = [false, true]
                parent.text = textField.text ?? ""
            } else if parent.tag == 1 {
                parent.isfocusAble = [false, false]
                parent.text = textField.text ?? ""
            }
            return true
        }
        
    }
}
