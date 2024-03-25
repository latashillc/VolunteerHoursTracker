//
//  PreviewData.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import Foundation

var transactionPreviewData = Transaction(id: 1,
                                         startDate: "2024-03-14",
                                         endDate: "2024-03-15",
                                         volunteeringDate: "2024-03-14",
                                         startTime: "09:00",
                                         endTime: "15:00",                                    
                                         organization: "Sample Organization",
                                         volunteerHours: 6,
                                         category: "Sample Category",
                                         programCoordinator: "Sample Coordinator",
                                         programDescription: "Sample Program Description",
                                         workDescription: "Sample Work Description Sample Work Description Sample Work Description Sample Work Description",
                                         feedback: "Sample Feedback",
                                         isPaid: false,
                                         hourlyRate : 0,
                                         address: "Sample Address",
                                         skills: "Sample Skills",
                                         training: "Sample Training",
                                         volunteerPosition: "Sample Volunteer Position")


var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
