//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Albin on 16/2/25.
//
import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Text("An error has occurred!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
                
            }
            .padding( )
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    ErrorView(errorWrapper: ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this message"))
}

enum SampleError: Error {
    case errorRequired
}
