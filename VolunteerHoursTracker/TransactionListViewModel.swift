//
//  TransactionListViewModel.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/24/24.
//

import Foundation

final class TransactionListViewModel: ObservableObject{
    @Published var transactions: [Transaction] = []
    
    func getTransactions(){
        
    }
}
