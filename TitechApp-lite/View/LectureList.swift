//
//  LectureList.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

let themeColor = Color(red: 0.33, green: 0.83, blue: 0.77, opacity: 1)

struct LectureList: View {
    var body: some View {
        NavigationView {
            List (lectures) { lecture in
                Rectangle()
                    .fill(themeColor)
                    .frame(width: 5, alignment: .leading)
                HStack {
                    LectureRow(lecture: lecture)
                    NavigationLink(destination: LectureInfo(lecture: lecture)) {
                        EmptyView()
                    }
                    .frame(width: 0)
                    .opacity(0)
                }
            }
            .navigationBarTitle("スケジュール", displayMode: .inline)
        }
        .accentColor(themeColor)
    }
}

struct LectureList_Previews: PreviewProvider {
    static var previews: some View {
        LectureList()
            .previewDevice("iPhone 12")
    }
}
