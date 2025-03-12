//
//  BankOperation.swift
//  SwiftBank
//
//  Created by Guilherme Golfetto on 24/02/25.
//

import Foundation

protocol BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool
}

class WithdrawOperation : BankOperation {

    func execute(
        in account: BankAccount,
        amount: Double
    ) -> Bool {
        
        if amount <= account.balance {
            account.balance -= amount
            account.notificationService.send(email: "somthing@something.com", message: "Saque no valor de \(amount.formatCurrency()) realizado")
            account.transactionHistoryService.addTransaction(message: "Saque no valor de \(amount.formatCurrency())")
            return true
        }
        
        return false
    }
}

class DepositOperation: BankOperation {
    
    func execute(in account: BankAccount, amount: Double) -> Bool {
        account.balance += amount
        account.notificationService.send(email: "somthing@something.com", message: "Depósito no valor de \(amount.formatCurrency()) realizado!")
        account.transactionHistoryService.addTransaction(message: "Depósito no valor de \(amount.formatCurrency())")
        return true
    }
    
}
