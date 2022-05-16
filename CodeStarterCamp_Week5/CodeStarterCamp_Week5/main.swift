//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by JAEHYEON on 2022/05/16.
//

import Foundation

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequencyOfCursing: .A)


let jay = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
