//
//  Model.swift
//  button
//
//  Created by Владимир Ширяев on 19.12.2021.
//

import Foundation

struct RestarantName2: Identifiable {
    let name: String
    let location: String
    let type: String
    let image: String
    let id = UUID()

    static let restarantName = [ "Burger Heroes", "Kitchen", "Bonsai","Дастархан", "Индокитай", "X.O","Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life","Шок", "Бочка"]

    static func getPlace() -> [RestarantName2]{
        var places = [RestarantName2]()
    for place in restarantName {
        places.append(RestarantName2(name: place, location: "Москва", type: "Ресторан", image: place))
    }
    return places
}
}
