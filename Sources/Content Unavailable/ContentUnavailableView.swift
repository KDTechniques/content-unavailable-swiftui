//
//  ContentUnavailableView.swift
//  content-unavailable-swiftui
//
//  Created by Mr. Kavinda Dilshan on 2024-08-02.
//

import SwiftUI

public struct ContentUnavailableView: View {
    // MARK: - PROPERTIES
    let systemImageName: String?
    let titleText: String
    let descriptionText: String?
    
    // MARK: - INITIALIZER
    public init(systemImageName: String? = nil, title: String, description: String? = nil) {
        self.systemImageName = systemImageName
        self.titleText = title
        self.descriptionText = description
    }
    
    // MARK: - BODY
    public var body: some View {
        VStack(spacing: 8) {
            systemImage
            title
            description
        }
        .padding(.horizontal, 30)
    }
}

// MARK: - PREVIEWS
#Preview("ContentUnavailableView") {
    ContentUnavailableView(
        systemImageName: "bookmark",
        title: "No Saved Episodes",
        description: "Save episodes you want listen to later, and they'll show up here."
    )
}

#Preview("Only Title") {
    ContentUnavailableView(
        title: "No Results"
    )
}

#Preview("Only Title & Description") {
    ContentUnavailableView(
        title: "No Saved Episodes",
        description: "Save episodes you want listen to later, and they'll show up here."
    )
}

// MARK: - EXTENSIONS
extension ContentUnavailableView {
    // MARK: - systemImage
    @ViewBuilder
    private var systemImage: some View {
        if let systemImageName {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundStyle(.secondary)
                .padding(.bottom, 4)
        }
    }
    
    // MARK: - title
    private var title: some View {
        Text(titleText)
            .font(.title2.weight(.bold))
            .lineLimit(1)
            .minimumScaleFactor(0.9)
    }
    
    // MARK: - description
    @ViewBuilder
    private var description: some View {
        if let descriptionText {
            Text(descriptionText)
                .font(.callout)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .fixedSize(horizontal: false, vertical: true)
                .minimumScaleFactor(0.9)
        }
    }
}
