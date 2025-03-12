//
//  TransactionHistoryService.swift
//  SwiftBank
//
//  Created by Guilherme Golfetto on 16/01/25.
//

import Foundation

class TransactionHistoryService {
    var transactions: [String] = []
    
    func addTransaction(message: String) {
        transactions.insert(message, at: 0)
    }
}
