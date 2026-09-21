//
//  AppleAccountSection.swift
//  Preferences
//

import SwiftUI

/// Apple Account Button Label (fake logged-in state)
struct AppleAccountSection: View {
    // Change these to whatever you want your friends to see
    private let displayName = "Machi Ming"       // your fake name
    private let email = "Apple Account, iCloud+ und mehr"  // your fake email
    
    var body: some View {
        HStack(spacing: 12) {
            // Profile picture (system person icon styled like the real one)
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundStyle(.white, .gray.gradient)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(displayName)
                    .bold()
                    .font(.title3)
                    .foregroundStyle(.primary)
                
                Text(email)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
            }
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    NavigationStack {
        List {
            AppleAccountSection()
        }
    }
}
