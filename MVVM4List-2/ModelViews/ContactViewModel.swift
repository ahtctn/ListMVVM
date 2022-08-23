//
//  ContactModelView.swift
//  MVVM4List-2
//
//  Created by Ahmet Ali ÇETİN on 21.08.2022.
//

import Foundation

class ContactViewModel: ObservableObject {
    @Published var contact: [ContactDataModel] = []
    @Published var filteredContact: [ContactDataModel] = []
    @Published var noResultFound: [ContactDataModel] = []
    
    init(){
        addPeople()
    }
    
    func addPeople() {
        contact = peopleData
    }
    
    var peopleData = [
        ContactDataModel(ad: "Ahmet Ali Çetin", telNo: "543-543-5432", email: "ahtctn@gmail.com"),
        ContactDataModel(ad: "Erkan Sevim", telNo: "543-543-5432", email: "erkansevm@gmail.com"),
        ContactDataModel(ad: "Yunus Emre Keskin", telNo: "543-543-5432", email: "yek@gmail.com"),
        ContactDataModel(ad: "Erdem Sarıkaya", telNo: "543-543-5432", email: "erdemsarkya@gmail.com"),
        ContactDataModel(ad: "Erbil Necip Gümüş", telNo: "543-543-5432", email: "eng@engkimya.com"),
        ContactDataModel(ad: "Mehmet Salihoğlu", telNo: "543-543-5432", email: "msalihoglu@univera.com"),
        ContactDataModel(ad: "Sami Delirmez", telNo: "543-543-5432", email: "sami@gmail.com"),
        ContactDataModel(ad: "Nevin Tuğba Serçe", telNo: "543-543-5432", email: "nevintugbaserce@gmail.com"),
        ContactDataModel(ad: "Demir Toprak", telNo: "543-543-5432" , email: "demirtoprak@outlook.com"),
        ContactDataModel(ad: "Salih Sedir", telNo: "543-543-5432", email: "sedirsalih@hotmail.com"),
        ContactDataModel(ad: "Tolga Aydın", telNo: "543-543-5432", email: "tolgaaydin@normholding.com"),
        ContactDataModel(ad: "Melih Can Macit", telNo: "543-543-5432", email: "melihcanmacit@outlook.com"),
        ContactDataModel(ad: "Esma Sürücü", telNo: "543-543-5432", email: "surucu@hotmail.com"),
        ContactDataModel(ad: "Ahmet Çerkez", telNo: "543-543-5432", email: "ahmetcerkez@gmail.com"),
        ContactDataModel(ad: "Didem Sarıkaya", telNo: "543-543-5432", email: "didemsarikaya@hotmail.com"),
        ContactDataModel(ad: "Ahmet Yılmaz", telNo: "543-543-5432", email: "ahmetyilmaz@gmail.com")
    ]
}


