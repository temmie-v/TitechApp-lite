//
//  TitechApp_liteApp.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import SwiftUI

@main
struct TitechApp_liteApp: App {
    init() {
        UINavigationBar.appearance().barTintColor = UIColor.white
        UINavigationBar.appearance().tintColor = UIColor(named: "AccentColor")
        UIViewController.init().extendedLayoutIncludesOpaqueBars = true
    }
    
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

