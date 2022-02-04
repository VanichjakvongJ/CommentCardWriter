//
//  PickerView.swift
//  CommentCardWriter
//
//  Created by Vanichjakvong, Jakpat (IRG) on 04/02/2022.
//

import SwiftUI

struct PickerView: View {
    @State var choice: Binding<String>
    var options: [String]
    var label: String
    
    var body: some View {
        Picker(label, selection: choice) {
            ForEach(options, id: \.self) {
                Text($0)
            }
        }
    }
    
    init(choice: Binding<String>, options: [String], label: String) {
        self.choice = choice
        self.options = options
        self.label = label
    }
}
