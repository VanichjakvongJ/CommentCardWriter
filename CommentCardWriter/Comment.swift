//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Vanichjakvong, Jakpat (IRG) on 04/02/2022.
//

import Foundation

class Comment: ObservableObject {
    
    let subjects = ["Computer Science", "Pure Mathematics", "Applied Mathematics", "Physics"]
    let moods = ["Positive", "Neutral", "Negative"]
    
    @Published var text = "Please click 'Generate Comment'"
    @Published var subject = "Computer Science"
    @Published var mood = "Negative"
    
    func generateComment() {
        if mood == "Positive" {
            text = "I am enjoying \(subject) right now. I feel that my theory knowledge is good enough, and I also feel comfortable with programming in Swift, and with SwiftUI. While I find some things difficult sometimes, I hope to continue studying this subject at university."
        } else if mood == "Negative" {
            text = "I am not enjoying \(subject) right now. I feel that while my theory knowledge is good enough, I do not feel nearly comfortable enough with programming in Swift, especially with SwiftUI. While I do have some doubts, for now I hope to continue studying this subject."
        }
        
    }
}
