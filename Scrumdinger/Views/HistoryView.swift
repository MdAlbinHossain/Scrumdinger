//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Albin on 18/2/25.
//
import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript{
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History{
    var attendeeString: String{
        ListFormatter.localizedString(byJoining: attendees.map{ $0.name })
    }
}

#Preview {
    HistoryView(history: History(attendees:[
        DailyScrum.Attendee(name: "Albin"),
        DailyScrum.Attendee(name: "Bob")
    ], transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the desing team to finalize the UI...."))
}
