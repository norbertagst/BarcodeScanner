//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Norbert Agoston on 15.02.2024.
//

import SwiftUI

struct BarcodeScannerView: View {   
        
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message ,
                      dismissButton: alertItem.dismissButton
                      
                )
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
