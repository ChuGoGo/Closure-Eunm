//
//  enum.swift
//  Closure&Eunm
//
//  Created by Chu Go-Go on 2022/6/12.
//

import Foundation
enum DrugDealer:String {
    case cocaine = "古柯鹼，一級毒品",heroin = "海洛因，一級毒品",methamphetamine = "安非他命，二級毒品",weed = "大麻，二級毒品",mdma = "搖頭丸，二級毒品"
}
func buyDrug(drug:DrugDealer) -> String{
    switch drug {
    case .cocaine:
        return "售價1500"
    case .heroin:
        return "售價1000"
    case .methamphetamine:
        return "售價800"
    case .weed:
        return "售價500"
    case .mdma:
        return "售價100"

    }
}
