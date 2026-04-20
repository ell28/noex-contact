//
//  addContactView.swift
//  noex-contact
//
//  Created by Elliezer on 20/04/26.
//

import SwiftUI
import SwiftData
import Foundation

struct addContactView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
//    @State private var pictures: UIImage = UIImage()
    var body: some View {
        
        List{
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
            TextField("Email", text: $email)
            TextField("Phone", text: $phoneNumber)
            Button("Add"){
                let contact = Contact(
                    id: UUID(),
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    phoneNumber: phoneNumber
                )
                modelContext.insert(contact)
                try? modelContext.save()
                dismiss()
            }
        }
    }
}
