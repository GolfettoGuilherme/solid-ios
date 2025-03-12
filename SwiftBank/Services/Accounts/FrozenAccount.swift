//
//  FrozenAccount.swift
//  SwiftBank
//
//  Created by Guilherme Golfetto on 24/02/25.
//

import Foundation

class FrozenAccount: BankAccount {
    override init(accountNumber: String) {
        super.init(accountNumber: accountNumber)
        isFrozen = true
    }
}
