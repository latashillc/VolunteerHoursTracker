//
//  ContentView.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingItemSheet = false;
    var transactions:[Transaction] = []
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(transactions) {transaction in
                    TransactionCell (transaction: Transaction)
                }
            }
            .navigationTitle("Volunteer Hours")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $isShowingItemSheet) {addTransactionSheet()}
            .toolbar {
                if !transactions.isEmpty{
                    Button("Add Volunteer Hours", systemImage: "plus"){
                        isShowingItemSheet = true
                    }
                }
            }
            .overlay{
                if transactions.isEmpty {
                    ContentUnavailableView(label : {
                        Label("No Volunteer hours", systemImage: "list.bullet.rectangle.potrait")
                    }, description: {
                        Text("Start Adding Volunteer Hours to see your List.")
                    }, actions: {
                        Button("Add Volunteer Hours") {isShowingItemSheet = true}
                    })
                    .offset(y: -60)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(transactions: transactionListPreviewData) // Assuming you have some mock data
        }
    }
    
    
    struct TransactionCell: View {
        let transaction: Transaction
        
        var body: some View {
            TransactionRowView(transaction: transaction)
        }
    }
}
