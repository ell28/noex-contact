//
//  ContentView.swift
//  noex-contact
//
//  Created by Elliezer on 17/04/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var contacts: [Contact]

    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: EditContactView(contact: contact)) {
                    Text(contact.firstName)
                }
            }
            .navigationTitle("Contacts-adit")
            .toolbar {
                
                ToolbarItem(placement: .bottomBar) {
                    NavigationLink(destination: addContactView()) {
                        Image(systemName: "plus")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Contact.self, inMemory: true)
}
