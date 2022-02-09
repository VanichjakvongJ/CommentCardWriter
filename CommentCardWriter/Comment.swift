//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Vanichjakvong, Jakpat (IRG) on 04/02/2022.
//

import Foundation

class Comment: ObservableObject {
    
    var subjects = ["Pure Mathematics", "Applied Mathematics", "Physics", "Chemistry", "Biology", "Computer Science", "Psychology", "Sociology", "English Language", "English Literature", "History", "Geography", "Religious Studies", "Français", "Español", "Deutsch", "Italiano", "Chinese", "Japanese", "Arabic", "Latin", "Classical Greek", "Classical Civilization", "Ancient History", "Economics", "Business", "Politics", "Law", "Art", "Design", "Drama", "Music", "Media Studies", "Food Technology", "Physcial Education", "Art History"]
    let goodOrBad = ["Good", "Bad"]
    let satisfaction = ["Excellent", "Good", "Average", "Poor", "Terrible"]
    
    @Published var text = ""
    @Published var custom = ""
    @Published var subject = "Pure Mathematics"
    @Published var enjoyment = "Good"
    @Published var knowledge = "Good"
    @Published var performance = "Good"
    @Published var improvement = "Good"
    
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
        
        text += custom
    }
}
