//
//  Contact.swift
//  noex-contact
//
//  Created by Elliezer on 20/04/26.
//
import SwiftData
import SwiftUI

@Model
class Contact{
    var id:UUID
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
//    var pictures: UIImage
    
    init(id: UUID, firstName: String, lastName:String, email: String, phoneNumber:String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phoneNumber = phoneNumber
    }
}
