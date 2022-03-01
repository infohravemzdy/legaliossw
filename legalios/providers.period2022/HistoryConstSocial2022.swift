//
// Created by Ladislav Lisy on 13.06.2021.
//

// MAX_ANNUALS_BASIS            Maximální roční vyměřovací základ na jednoho pracovníka (tzv.strop)
//
// FACTOR_EMPLOYER              Sazba - standardní sociálního pojištění - zaměstnavatele
//
// FACTOR_EMPLOYER_HIGHER       Sazba - vyší sociálního pojištění - zaměstnavatele
//
// FACTOR_EMPLOYEE              Sazba sociálního pojištění - zaměstnance
//
// FACTOR_EMPLOYEE_REDUCE       Snížení sazby sociálního pojištění - zaměstnance - s důchodovým spořením
//
// FACTOR_EMPLOYEE_GARANT       Sazba důchodového spoření - zaměstnance - s důchodovým spořením
//
// MARGIN_INCOME_EMP            hranice příjmu pro vznik účasti na pojištění pro zaměstnace v pracovním poměru
//
// MARGIN_INCOME_AGR            hranice příjmu pro vznik účasti na pojištění pro zaměstnace na dohodu

import Foundation

struct HistoryConstSocial2022
{
    static let VERSION_CODE: Int16 = 2022

    static let MAX_ANNUALS_BASIS: Int32 = 1867728
    static let FACTOR_EMPLOYER: Decimal = HistoryConstSocial2021.FACTOR_EMPLOYER
    static let FACTOR_EMPLOYER_HIGHER: Decimal = HistoryConstSocial2021.FACTOR_EMPLOYER_HIGHER
    static let FACTOR_EMPLOYEE: Decimal = HistoryConstSocial2021.FACTOR_EMPLOYEE
    static let FACTOR_EMPLOYEE_REDUCE: Decimal = HistoryConstSocial2021.FACTOR_EMPLOYEE_REDUCE
    static let FACTOR_EMPLOYEE_GARANT: Decimal = HistoryConstSocial2021.FACTOR_EMPLOYEE_GARANT
    static let MARGIN_INCOME_EMP: Int32 = HistoryConstSocial2021.MARGIN_INCOME_EMP
    static let MARGIN_INCOME_AGR: Int32 = HistoryConstSocial2021.MARGIN_INCOME_AGR
}

