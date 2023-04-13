//
//  PhilosophyModel.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 11.04.2023.
//


struct Philosophy {
    let movements: [Movements]
    let schools: [Schools]
    let philosophers: [Philosophers]
}

struct Movements {
    let title: String
    let description: String
    let school: [Schools]
    let philosopher: [Philosophers]
}

struct Schools {
    let title: String
    let description: String
    let movement: [Movements]
    let philosopher: [Philosophers]
}

struct Philosophers {
    let name: String
    let biography: String
    let philosopherImage: String
    let doctrine: String
    let movement: [Movements]
    let school: [Schools]
}

enum PhilosophyType: String {
    case ancient
    case medieval
    case renaissance
    case enlightenment
    case nineteenthCentury
    case twentiethCentury
    case contemporary
}
