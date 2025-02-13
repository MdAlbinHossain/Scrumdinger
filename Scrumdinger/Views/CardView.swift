//
//  CardView.swift
//  Scrumdinger
//
//  Created by Albin on 12/2/25.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }.padding()
            .foregroundColor(scrum.theme.accencolor)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 60)) {
    CardView(scrum: DailyScrum.sampleData[0])
}
