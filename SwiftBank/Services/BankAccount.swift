//
//  BankAccount.swift
//  SwiftBank
//
//  Created by Giovanna Moeller on 15/03/24.
//

import Foundation

protocol BankingServiceDelegate: AnyObject {
    func didPerformOperation()
}

protocol InterarestRate {
    func calculateInterestRate()
}

protocol LonableAccount {
    func requestLoan(amount: Double)
}

class BankAccount {
    
    var balance: Double = 0.0
    var accountNumber: String
    var isFrozen: Bool = false
    
    var notificationService = EmailNotificationService()
    var transactionHistoryService = TransactionHistoryService()
    
    init(accountNumber: String) {
        self.accountNumber = accountNumber
    }
    
    func performOperation(operation: BankOperation, amount: Double) -> Bool {
        guard !isFrozen else {
            notificationService.send(email: "somthing@something", message: "Sua conta foi congelada! entre em contato com nossos atendimento.")
            return false
        }
        return operation.execute(in: self, amount: amount)
    }
        
}
