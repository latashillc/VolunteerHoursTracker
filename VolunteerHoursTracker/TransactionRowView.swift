//
//  TransactionRowView.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import SwiftUI
//import SwiftUIFontIcon

struct TransactionRowView: View {
    var transaction: Transaction
    
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 6) {
                    Text(transaction.organization)
                        .font(.subheadline)
                        .bold()
                        .lineLimit(1)
                        .foregroundColor(.primary) // Use primary color for text
                    Text(transaction.volunteerPosition)
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(.secondary) // Secondary color for less prominence
                  
                    // New HStack for Hours and Total Hours
                                    HStack {
                                        Text(transaction.volunteeringDateParsed, format: .dateTime.year().month().day())
                                            .font(.footnote)
                                            .foregroundColor(.secondary) // Secondary color for date
                                        Spacer()
                                        Text("Hours: \(transaction.volunteerHours) hrs")
                                            .font(.footnote)
                                            .foregroundColor(.primary)
                                        
                                        Spacer() // Use Spacer to push the two texts apart
                                        
                                        Text("Total Hours: \(transaction.volunteerHours) hrs")
                                            .font(.footnote)
                                            .foregroundColor(.primary)
                                    }
                    if transaction.isPaid {
                                           Text("Hourly Rate: $\(transaction.hourlyRate, format: .currency(code: "USD"))")
                                               .font(.footnote)
                                               .foregroundColor(.primary)
                        Text("Total Pay: \(transaction.totalPayment, format: .currency(code: "USD"))")
                            .font(.footnote)
                            .foregroundColor(.primary)
                                       }
                    Text("Description: \(transaction.workDescription)")
                        .font(.footnote)
                }
            }
            .padding(20) // Add padding inside the HStack for content spacing
            //.background(Color(UIColor.systemBackground)) // Adapt to light or dark mode
            .background(Color.icon)
            .cornerRadius(10) // Rounded corners for the card
            .shadow(radius: 5) // Shadow for depth effect
        }
        .padding(.horizontal, 5) // Adjust this to control the card's spacing from the screen edges
    }
}


struct TransactionRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRowView(transaction: transactionPreviewData)
            TransactionRowView(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
        .padding(0) // This ensures the preview closely represents the actual layout
    }
}

