//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Vanichjakvong, Jakpat (IRG) on 04/02/2022.
//

import Foundation

class Comment: ObservableObject {
    
    var subjects = ["Computer Science", "Pure Mathematics", "Applied Mathematics", "Physics", "Chemistry", "Biology"]
    let goodOrBad = ["Good", "Bad"]
    
    @Published var text = ""
    @Published var subject = ""
    @Published var enjoyment = ""
    @Published var knowledge = ""
    @Published var performance = ""
    @Published var improvement = ""
    
    func generateComment() {
        text = ""
        if enjoyment == "Good" {
            text += "I am enjoying \(subject) right now. "
        } else if enjoyment == "Bad" {
            text += "I am not enjoying \(subject) right now. "
        }
        
        if knowledge == "Good" {
            text += "I feel that my current knowledge of the subject is suffcient for where I am currently at. "
        } else if knowledge == "Bad" {
            text += "I feel that my current knowledge of the subject is sometimes not quite what it should be. "
        }
        
        if performance == "Good" {
            text += "I think that I am doing quite well in both in class and with Extra Work. "
        } else if performance == "Bad" {
            text += "I think that I have occasionally struggled in class and with Extra Work. "
        }
        
        if improvement == "Good" {
            text += "I am confident that I will continue to improve in this subject. "
        } else if improvement == "Bad" {
            text += "I find that my progress has stagnated in this subject. "
        }
    }
}
