//
//  TitechApp_liteApp.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

@main
struct TitechApp_liteApp: App {
    var body: some Scene {
        WindowGroup {
            LectureList()
                .onAppear {
                    let lectures = loadLecture()
                    print(lectures)
                }
        }
    }
}
