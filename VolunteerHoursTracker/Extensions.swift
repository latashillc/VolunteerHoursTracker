//
//  Extensions.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import Foundation
import SwiftUI

extension Color {
    static let customBackground = Color("Background")
    static let customIcon = Color("Icon")
    static let customText = Color("Text")
    static let customSystemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
    let formatter = DateFormatter()
        formatter.dateFormat = "mm/dd/yyyy"
        return formatter
        
    }()
}

extension String{
    
    func dateParsed() -> Date {
      guard let parsedDate = DateFormatter.allNumericUSA.date(from:self) else {return Date()}
      return parsedDate
    }
}
