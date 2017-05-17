//
//  Person.swift
//  MVCTest
//
//  Created by Allen Boynton on 4/18/17.
//  Copyright © 2017 ABtech Applications. All rights reserved.
//

import Foundation


class Person {
    
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        }
        set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    var fullName: String {
        return "\(_firstName) \(_lastName)"
    }
    
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }
}
