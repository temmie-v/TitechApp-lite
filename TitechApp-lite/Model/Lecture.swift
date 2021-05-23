//
//  Lecture.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//

import Foundation

struct Lecture: Decodable {
    let name: String
    let description: String
    let start_time: String
    let end_time: String
    let place: String
    struct Information: Decodable {
        let topic: String
        let detail: String
    }
    let information: [Information]
}
