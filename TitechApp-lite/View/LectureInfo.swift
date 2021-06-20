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
        List {
            ForEach  (lecture.information) { information in
                HStack {
                    Rectangle()
                        .fill(Color("AccentColor"))
                        .frame(width: 6, height: 80, alignment: .leading)
                        .listRowInsets(EdgeInsets())
                    LectureInfoRow(information: information)
                }
            }
            .listRowInsets(EdgeInsets())
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
