//
//  User.swift
//  rutas
//
//  Created by alumnos on 26/01/2021.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation


class User: Codable{
    public var id: Int?
    let user: String
    let pass: String
    
    init(user: String, pass: String) {
            self.user = user
            self.pass = pass
        }
}
