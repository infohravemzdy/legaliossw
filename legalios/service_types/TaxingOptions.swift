//
// Created by Ladislav Lisy on 28.02.2022.
//

import Foundation

enum TaxDeclSignOption : Int16 {
    case DeclTaxNoSigned = 0
    case DeclTaxDoSigned = 1
}

enum TaxNoneSignOption : Int16 {
    case NosignTaxWithhold = 0
    case NosignTaxAdvances = 1
}

enum TaxDeclBenfOption : Int16 {
    case DeclTaxBenef0 = 0
    case DeclTaxBenef1 = 1
}

enum TaxDeclDisabOption : Int16 {
    case DeclTaxBenef0 = 0
    case DeclTaxDisab1 = 1
    case DeclTaxDisab2 = 2
    case DeclTaxDisab3 = 3
}
