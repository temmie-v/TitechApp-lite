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
                ForEach (lectures) { lecture in
                    HStack {
                        Rectangle()
                            .fill(Color("AccentColor"))
                            .frame(width: 6, height: 80, alignment: .leading)
                            .listRowInsets(EdgeInsets())
                        LectureRow(lecture: lecture)
                        NavigationLink(destination: LectureInfo(lecture: lecture)) {
                            EmptyView()
                        }
                        .frame(width: 0)
                        .opacity(0)
                    }
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("スケジュール", displayMode: .inline)
        }
    }
}

struct LectureList_Previews: PreviewProvider {
    static var previews: some View {
        LectureList()
            .previewDevice("iPhone 12")
    }
}
