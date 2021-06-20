//
//  LectureInfoRow.swift
//  TitechApp-lite
//
//  Created by USER on 2021/06/20.
//


import SwiftUI

struct LectureInfoRow: View {
    var information: Lecture.Information

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text(information.topic)
                    Spacer()
                }
                HStack {
                    Text(information.detail)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct LectureInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        LectureInfoRow(information: lectures[0].information[0])
            .previewDevice("iPhone 12")
    }
}
