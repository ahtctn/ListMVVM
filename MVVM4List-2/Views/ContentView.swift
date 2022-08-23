//
//  ContentView.swift
//  MVVM4List-2
//
//  Created by Ahmet Ali ÇETİN on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var searchableText = ""
    @StateObject private var contactVM: ContactViewModel = ContactViewModel()
    
    fileprivate var contactList: [ContactDataModel] {
        if searchableText.isEmpty || searchableText.count < 3 {
            return contactVM.contact
        } else if searchableText != "" || searchableText.count > 3 {
            return contactVM.filteredContact
        } else {
            return contactVM.noResultFound
        }
    }
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                HStack {
                    //Ad
                    Text(contact.ad)
                    Spacer()
                    VStack(alignment: .trailing) {
                        HStack {
                            // telefon numarası
                            Image(systemName: "phone.fill")
                                .foregroundColor(.green)
                            Text(contact.telNo)
                        }
                        HStack {
                            //mail adresi
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.blue)
                            Text(contact.email)
                                .font(.system(size: 12))
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .navigationTitle("Contact")
            .searchable(text: $searchableText, placement: .navigationBarDrawer, prompt: "Look for a contact")
            .onChange(of: searchableText) { searchableText in
                contactVM.filteredContact = contactVM.contact.filter({ contact in
                    contact.ad.lowercased().contains(searchableText.lowercased())
                })
            }
            .overlay {
                if contactVM.filteredContact.isEmpty && searchableText.count > 3 {
                    NoResultView(searchableText: $searchableText)
                }
            }
            .preferredColorScheme(.dark)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
