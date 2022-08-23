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
        ContactDataModel(ad: "Ahmet Ali Çetin", telNo: "534-613-2764", email: "ahtctn@gmail.com"),
        ContactDataModel(ad: "Erkan Sevim", telNo: "530-118-7826", email: "erkansevm@gmail.com"),
        ContactDataModel(ad: "Yunus Emre Keskin", telNo: "542-785-0792", email: "yek@gmail.com"),
        ContactDataModel(ad: "Erdem Sarıkaya", telNo: "554-613-2764", email: "erdemsarkya@gmail.com"),
        ContactDataModel(ad: "Erbil Necip Gümüş", telNo: "506-708-3583", email: "eng@engkimya.com"),
        ContactDataModel(ad: "Mehmet Salihoğlu", telNo: "542-789-1452", email: "msalihoglu@univera.com"),
        ContactDataModel(ad: "Sami Delirmez", telNo: "546-755-1792", email: "sami@gmail.com"),
        ContactDataModel(ad: "Nevin Tuğba Serçe", telNo: "556-567-8765", email: "nevintugbaserce@gmail.com"),
        ContactDataModel(ad: "Demir Toprak", telNo: "543-432-2354" , email: "demirtoprak@outlook.com"),
        ContactDataModel(ad: "Salih Sedir", telNo: "554-456-7684", email: "sedirsalih@hotmail.com"),
        ContactDataModel(ad: "Tolga Aydın", telNo: "564-234-7890", email: "tolgaaydin@normholding.com"),
        ContactDataModel(ad: "Melih Can Macit", telNo: "567-234-3463", email: "melihcanmacit@outlook.com"),
        ContactDataModel(ad: "Esma Sürücü", telNo: "543-789-5335", email: "surucu@hotmail.com"),
        ContactDataModel(ad: "Ahmet Çerkez", telNo: "542-546-2341", email: "ahmetcerkez@gmail.com"),
        ContactDataModel(ad: "Didem Sarıkaya", telNo: "567-789-0987", email: "didemsarikaya@hotmail.com"),
        ContactDataModel(ad: "Ahmet Yılmaz", telNo: "556-678-3456", email: "ahmetyilmaz@gmail.com")
    ]
}


