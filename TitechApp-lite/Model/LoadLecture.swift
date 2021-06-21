//
//  json_extract.swift
//  TitechApp-lite
//
//  Created by USER on 2021/05/23.
//


import Foundation

let lectures = loadLecture()

func loadLecture() -> [Lecture] {
    let file = Bundle.main.url(forResource: "LectureData", withExtension: ".json")!
    do {
        let data = try Data(contentsOf: file)
        let lectures = try JSONDecoder().decode([Lecture].self, from: data)
        return lectures
    } catch {
        print(error)
        return []
    }
}
