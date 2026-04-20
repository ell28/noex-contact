//
//  EditContactView.swift
//  noex-contact
//
//  Created by Elliezer on 20/04/26.
//

import SwiftUI
import SwiftData

struct EditContactView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    var contact: Contact

    @State private var firstName: String
    @State private var lastName: String
    @State private var email: String
    @State private var phoneNumber: String

    init(contact: Contact) {
        self.contact = contact
        _firstName = State(initialValue: contact.firstName)
        _lastName = State(initialValue: contact.lastName)
        _email = State(initialValue: contact.email)
        _phoneNumber = State(initialValue: contact.phoneNumber)
    }

    var body: some View {
        List {
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
            TextField("Email", text: $email)
            TextField("Phone", text: $phoneNumber)
            Button("Save") {
                contact.firstName = firstName
                contact.lastName = lastName
                contact.email = email
                contact.phoneNumber = phoneNumber
                try? modelContext.save()
                dismiss()
            }
        }
        .navigationTitle("Edit Contact")
    }
}
