//
//  LectureList.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

struct LectureList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: LectureInfo(lecture: lectures[0])) {
                    LectureRow(lecture: lectures[0])
                }
                NavigationLink(destination: LectureInfo(lecture: lectures[1])) {
                    LectureRow(lecture: lectures[1])
                }
                NavigationLink(destination: LectureInfo(lecture: lectures[2])) {
                    LectureRow(lecture: lectures[2])
                }
            }
            .navigationTitle("スケジュール")
        }
    }
}

struct LectureList_Previews: PreviewProvider {
    static var previews: some View {
        LectureList()
            .previewDevice("iPhone 12")
    }
}
