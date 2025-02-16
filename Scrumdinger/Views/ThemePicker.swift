//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Albin on 13/2/25.
//

import SwiftUI

public struct ThemePicker: View {
    @Binding var selection: Theme
    
    public var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases){ theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePicker(selection: .constant(.periwinkle))
}
