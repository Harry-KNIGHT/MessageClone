//
//  MessageModel.swift
//  MessageCloneApp
//
//  Created by Elliot Knight on 02/02/2022.
//

import Foundation


struct Message: Identifiable {
    var id = UUID()
    var photo: String
    var name: String
    var hourReception: String
    var messageContent: String
 
    
    static var messages: [Message] = [
        Message(photo: "avatar0", name: "Jérôme Bermudez", hourReception: "18:40", messageContent: "Hello my friend, hope you're always ok for tonight, see ya"),
        Message(photo: "avatar1", name: "Nathalie Taf", hourReception: "18:01", messageContent: "Please Tom, can you call me later ?"),
        Message(photo: "", name: "Morrison Hotel", hourReception: "17:59", messageContent: "This is the end !"),
        Message(photo: "", name: "Mom Friend", hourReception: "17:55", messageContent: "Your mother called me, she's in holiday enjoying sunny time !"),
        Message(photo: "avatar2", name: "Julie Chemin", hourReception: "17:42", messageContent: "Ok 😂"),
        Message(photo: "avatar3", name: "Fred Camping", hourReception: "16:55", messageContent: "Hi boy, will you come next time ?"),
        Message(photo: "avatar4", name: "Nono", hourReception: "15:58", messageContent: "Waiting for ya... again 🤬"),
        Message(photo: "avatar5", name: "Ayoub Saidia", hourReception: "15:22", messageContent: "Subscribe to Apprendre SwiftUI on YouTube 💙"),
        Message(photo: "avatar6", name: "Mariane", hourReception: "15:10", messageContent: "Buy AirPod."),
        Message(photo: "", name: "Daddy", hourReception: "13:30", messageContent: "My new car is so heavy ! Love it !"),

        Message(photo: "avatar7", name: "Philippe", hourReception: "10:10", messageContent: "New m1 max is dope bro, hope you'll try it at home"),
        Message(photo: "avatar8", name: "Maximus Terriblus", hourReception: "Hier", messageContent: "I'm watching for the stars at the Mexico desert, will you come ?"),
        Message(photo: "", name: "Nathalie", hourReception: "Hier", messageContent: "See you next time !")
    ]
}
