//
//  Player.swift
//  WhiteSoxMasterDetail
//
//  Created by Navya Rayala on 10/23/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import Foundation
class Player{
    var number=""
    var firstName=""
    var lastName=""
    var position=""
    var bats=""
    var throws=""
    var height=""
    var weight=""
    var DOB=""
    
    init (number:String, firstName:String, lastName:String, position:String, bats:String, throws:String, height:String, weight:String, DOB:String){
        self.number=number
        self.firstName=firstName
        self.lastName=lastName
        self.position=position
        self.bats=bats
        self.throws=throws
        self.height=height
        self.weight=weight
        self.DOB=DOB
    }
}