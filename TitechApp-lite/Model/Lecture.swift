//
//  Lecture.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import Foundation

struct Lecture: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let startTime: String
    let endTime: String
    let place: String
    struct Information: Decodable, Identifiable {
        let id: Int
        let topic: String
        let detail: String
    }
    let information: [Information]
}
