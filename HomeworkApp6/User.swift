//
//  User.swift
//  HomeworkApp6
//
//  Created by Глеб Зобнин on 11.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUsers() -> [User] {
        [
            User(
                login: "Vovka",
                password: "1234",
                person: Person(
                    name: "Вовка",
                    surname: "Итаксойдёт",
                    company: "Тридевятое царство",
                    department: "Корытное отделение",
                    occupation: "Столяр",
                    bio: """
                    Любит ленится,
                    жизненное кредо - "Ладно, и так сойдёт".
                    Одноко если надо будет,
                    может корыто сделать
                    """,
                    photo: "Vovka")
            ),
            User(
                login: "Nyusha",
                password: "Nyusha5678",
                person: Person(
                    name: "Нюша",
                    surname: "Нюшовна",
                    company: "Смешарики",
                    department: "Дом моды",
                    occupation: "Специалист по моде",
                    bio: """
                    Нюша обожает сладкое и всё, что блестит.
                    Никогда не отстаёт от трендов моды.
                    Любит поболтать на разные темы.
                    Встречается с Барашем, но только ради конфет.
                    """,
                    photo: "Nyusha")
            )
        ]
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let occupation: String
    let bio: String
    let photo: String
}


