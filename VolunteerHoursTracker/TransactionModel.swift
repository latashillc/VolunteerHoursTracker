//
//  TransactionModel.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import Foundation
import SwiftData
@Model
class Transaction {
    var organization : String
    var programDescription: String
    var programCoordinator : String
    var startDate: String
    var totalVolunteerHours : Int
    var address : String
    var skills : String
    var training : String
    var volunteerPosition : String
    var feedback: String
    var images: String
    var imageDescription : String

    var volunteeringDate : String
    var volunteerHours: Int
    var jobDescription : String
    

    var startDateParsed: Date {
        startDate.dateParsed()
    }
    
    var volunteeringDateParsed: Date {
        volunteeringDate.dateParsed()
    }
    
    init(organization: String, programDescription: String, programCoordinator: String, startDate: String, totalVolunteerHours: Int, address: String, skills: String, training: String, volunteerPosition: String, feedback: String, images: String, imageDescription: String, volunteeringDate: String, volunteerHours: Int, jobDescription: String) {
        self.organization = organization
        self.programDescription = programDescription
        self.programCoordinator = programCoordinator
        self.startDate = startDate
        self.totalVolunteerHours = totalVolunteerHours
        self.address = address
        self.skills = skills
        self.training = training
        self.volunteerPosition = volunteerPosition
        self.feedback = feedback
        self.images = images
        self.imageDescription = imageDescription
        self.volunteeringDate = volunteeringDate
        self.volunteerHours = volunteerHours
        self.jobDescription = jobDescription
    }
    


}



