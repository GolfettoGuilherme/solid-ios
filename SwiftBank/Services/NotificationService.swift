//
//  NotificationService.swift
//  SwiftBank
//
//  Created by Guilherme Golfetto on 16/01/25.
//

import Foundation

typealias NotificationService = (EmailNotifier & SMSNotifier & PushNotifier)

// MARK: - Interfaces

protocol EmailNotifier {
    func send(email: String, message: String)
}

protocol SMSNotifier {
    func send(phoneNumber: String, message: String)
}

protocol PushNotifier {
    func send(deviceId: String, message: String)
}

// MARK: - Classes

class EmailNotificationService: EmailNotifier {
    func send(email: String, message: String) {
        print("Sending email to \(email): \(message)")
    }
}

class PushNotificationService: PushNotifier {
    func send(deviceId: String, message: String) {
        print("Sending push Notification to \(deviceId): \(message)")
    }
}
