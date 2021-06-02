//
//  LectureInfo.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

struct LectureInfo: View {
    var lecture: Lecture

    var body: some View {
        List (lecture.information) { info in
            Rectangle()
                .fill(themeColor)
                .frame(width: 5, alignment: .leading)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text(info.topic)
                        Spacer()
                    }
                    HStack {
                        Text(info.detail)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle(lecture.name)
    }
}

struct LectureInfo_Previews: PreviewProvider {
    static var previews: some View {
        LectureInfo(lecture: lectures[0])
            .previewDevice("iPhone 12")
    }
}
