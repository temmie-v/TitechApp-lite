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
        VStack {
            VStack {
                let n = lecture.information.count
                ForEach(0..<n) { num in
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(lecture.information[num].topic)
                                Spacer()
                            }
                            
                            HStack {
                                Text(lecture.information[num].detail)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Spacer()
                            }
                        }
                    }
                    if (n - 1) > num {
                        Divider()
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct LectureInfo_Previews: PreviewProvider {
    static var previews: some View {
        LectureInfo(lecture: lectures[0])
            .previewDevice("iPhone 12")
    }
}
