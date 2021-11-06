//
// Created by Ladislav Lisy on 16.07.2021.
//

import Foundation
import Quick
import Nimble

@testable import legalios

#if __PROTOKOL_TEST_FILE__
class ProtokolTaxingTest: QuickSpec {
    override func spec() {
        describe("GetProps_ShouldExport_AllowancePayer") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_01_AllowancePayer.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowancePayer })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceDisab1st") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_02_AllowanceDisab1st.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceDisab1st })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceDisab2nd") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_03_AllowanceDisab2nd.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceDisab2nd })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceDisab3rd") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_04_AllowanceDisab3rd.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceDisab3rd })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceStudy") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_05_AllowanceStudy.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceStudy })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceChild1st") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_06_AllowanceChild1st.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceChild1st })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceChild2nd") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_07_AllowanceChild2nd.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceChild2nd })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_AllowanceChild3rd") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_08_AllowanceChild3rd.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.allowanceChild3rd })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_FactorAdvances") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsDecFile(fileName: "04_Taxing_09_FactorAdvances.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.factorAdvances })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_FactorWithhold") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsDecFile(fileName: "04_Taxing_10_FactorWithhold.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.factorWithhold })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_FactorSolitary") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsDecFile(fileName: "04_Taxing_11_FactorSolitary.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.factorSolitary })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MinAmountOfTaxBonus") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_12_MinAmountOfTaxBonus.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.minAmountOfTaxBonus })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MaxAmountOfTaxBonus") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_13_MaxAmountOfTaxBonus.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.maxAmountOfTaxBonus })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfTaxBonus") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_14_MarginIncomeOfTaxBonus.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfTaxBonus })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfRounding") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_15_MarginIncomeOfRounding.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfRounding })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfWithhold") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_16_MarginIncomeOfWithhold.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfWithhold })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfSolitary") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_17_MarginIncomeOfSolitary.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfSolitary })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfWthEmp") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_18_MarginIncomeOfWthEmp.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfWthEmp })
                    }
                }
            }
        }
        describe("GetProps_ShouldExport_MarginIncomeOfWthAgr") {
            let test_examples: [(title: String, minYear: Int16, maxYear: Int16)] = [
                ("2011-2022", 2011, 2022),
            ]
            test_examples.forEach { (title: String, minYear: Int16, maxYear: Int16) in
                context("tests for years \(title)") {
                    var factory: FactoryTaxing?

                    beforeEach {
                        factory = FactoryTaxing()
                    }

                    it("GetProps should export values") {
                        exportPropsIntFile(fileName: "04_Taxing_19_MarginIncomeOfWthAgr.txt",
                                minYear: minYear, maxYear: maxYear, sut: factory!,
                                function: { prop in prop.marginIncomeOfWthAgr })
                    }
                }
            }
        }
    }
}
#endif