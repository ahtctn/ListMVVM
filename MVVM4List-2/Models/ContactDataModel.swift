//
//  ContactModel.swift
//  MVVM4List-2
//
//  Created by Ahmet Ali ÇETİN on 21.08.2022.
//

import Foundation

struct ContactDataModel : Hashable, Identifiable {
    var id = UUID()
    var ad: String
    var telNo: String
    var email: String
}
