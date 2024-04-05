//
//  OnboardingView.swift
//  MC1
//
//  Created by Taerin Kim on 3/24/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        Text("밤팟")
            .foregroundStyle(Color(hexColor: "1098A1"))
            .font(
                .custom("SokchoBadaDotum",
                        size: 60))
    }
}

#Preview {
    OnboardingView()
}
