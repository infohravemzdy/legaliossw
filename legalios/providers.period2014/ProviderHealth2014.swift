//
// Created by Ladislav Lisy on 29.06.2014.
//

import Foundation

class ProviderHealth2014 : ProviderHealth {
    init() {
        super.init(versionId: HistoryConstHealth2014.VERSION_CODE)
    }

    override func getProps<P>(_ period: IPeriod) -> P {
        return PropsHealth2014(version: version,
                minMonthlyBasis: minMonthlyBasis(period),
                maxAnnualsBasis: maxAnnualsBasis(period),
                limMonthlyState: limMonthlyState(period),
                limMonthlyDis50: limMonthlyDis50(period),
                factorCompound: factorCompound(period),
                factorEmployee: factorEmployee(period),
                marginIncomeEmp: marginIncomeEmp(period),
                marginIncomeAgr: marginIncomeAgr(period)) as! P }

    override func minMonthlyBasis(_ period: IPeriod) -> Int32 {
        return HistoryConstHealth2014.MIN_MONTHLY_BASIS
    }

    override func maxAnnualsBasis(_ period: IPeriod) -> Int32 {
        return HistoryConstHealth2014.MAX_ANNUALS_BASIS
    }

    override func limMonthlyState(_ period: IPeriod) -> Int32 {
        return HistoryConstHealth2014.LIM_MONTHLY_STATE
    }

    override func limMonthlyDis50(_ period: IPeriod) -> Int32 {
        if (IsPeriodGreaterOrEqualThan(period: period, yearFrom: 2014, monthFrom: 7)) {
            return HistoryConstHealth2014var07.LIM_MONTHLY_DIS50
        }
        return HistoryConstHealth2014.LIM_MONTHLY_DIS50
    }

    override func factorCompound(_ period: IPeriod) -> Decimal {
        return HistoryConstHealth2014.FACTOR_COMPOUND
    }

    override func factorEmployee(_ period: IPeriod) -> Decimal {
        return HistoryConstHealth2014.FACTOR_EMPLOYEE
    }

    override func marginIncomeEmp(_ period: IPeriod) -> Int32 {
        return HistoryConstHealth2014.MARGIN_INCOME_EMP
    }

    override func marginIncomeAgr(_ period: IPeriod) -> Int32 {
        return HistoryConstHealth2014.MARGIN_INCOME_AGR
    }
}
