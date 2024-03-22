//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Norbert Agoston on 15.02.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Something is wrong with the camera."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid Scan Type "),
                                              message: Text("Scanned value is not valid."),
                                              dismissButton: .default(Text("Ok")))
}
