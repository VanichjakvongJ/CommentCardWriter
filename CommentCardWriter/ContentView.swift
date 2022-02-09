//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Vanichjakvong, Jakpat (IRG) on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var comment = Comment()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    PickerView(choice: $comment.subject, options: comment.subjects, label: "Subject")
                    PickerView(choice: $comment.enjoyment, options: comment.goodOrBad, label: "Enjoyment")
                    PickerView(choice: $comment.knowledge, options: comment.goodOrBad, label: "Knowledge")
                    PickerView(choice: $comment.performance, options: comment.goodOrBad, label: "Performance")
                    PickerView(choice: $comment.performance, options: comment.goodOrBad, label: "Improvement")
                }
                
                Button("Generate Comment", action: { comment.generateComment() })
                
                Text(comment.text)
                    .padding()
                
            }
            
            .navigationTitle("Comment Cards")
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
