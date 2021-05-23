//
//  LectureRow.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

struct LectureRow: View {
    var lecture: Lecture

    var body: some View {
        HStack {
            HStack {
                VStack(alignment: .center, spacing: 10) {
                    Text(lecture.start_time)
                        .font(.subheadline)
                    Text(lecture.end_time)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                }
                VStack(alignment: .leading, spacing: 10) {
                    Text(lecture.name)
                    Text(lecture.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            Spacer()
            Text(lecture.place)
                .foregroundColor(.green)
            Divider()
        }
        .padding()
    }
}

struct LectureRow_Previews: PreviewProvider {
    static var previews: some View {
        LectureRow(lecture: lectures[0])
            .previewDevice("iPhone 12")
    }
}
