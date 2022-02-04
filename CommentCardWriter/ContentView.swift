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
                    PickerView(choice: $comment.mood, options: comment.moods, label: "Mood")
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
