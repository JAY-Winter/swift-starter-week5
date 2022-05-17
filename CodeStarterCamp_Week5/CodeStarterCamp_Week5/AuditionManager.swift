//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by JAEHYEON on 2022/05/16.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    
    var passedApplicantsList: [Person] = []
    
    mutating func cast() throws {

        for applicant in totalApplicantsList {
            guard let talentedApplicant = applicant as? Talent else { continue }
            
            
            guard talentedApplicant.singing == .A || talentedApplicant.dancing == .A || talentedApplicant.acting == .A else { continue }
            
            if talentedApplicant is TalentedPersonWithBadPersonality {
                throw ErrorList.실력이뛰어나나인성이좋지않음
            } else {
                passedApplicantsList.append(talentedApplicant as! Person)
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for passedApplicant in passedApplicantsList {
            print(passedApplicant.name)
        }
        print("""
              --------------
              축하합니다!!
              """)
    }
}
