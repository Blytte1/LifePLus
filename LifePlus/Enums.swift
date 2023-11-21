//
//  Enums.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 14/11/23.
//

import Foundation

enum SeatedWork:Double, CaseIterable{
    case yes = -3
    case no = 0
}
extension SeatedWork:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}

enum Pedestrian:Double, CaseIterable{
    case yes = 0.25
    case no = 0
}
extension Pedestrian:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum SeatBelt:Double, CaseIterable{
    case yes = 0.25
    case no = 0
}
extension SeatBelt:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Swim:Double, CaseIterable{
    case yes = 0.25
    case no = 0
}
extension Swim:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Camping:Double, CaseIterable{
    case yes = 0.25
    case no = 0
}
extension Camping:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Phisical:Double, CaseIterable{
    case yes = 0.5
    case no = -1
}
extension Phisical:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Bike:Double, CaseIterable{
    case yes = -0.5
    case no = 0
}
extension Bike:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Hunt:Double, CaseIterable{
    case yes = 0.5
    case no = 0
}
extension Hunt:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum AirPlane:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension Night:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Night:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension AirPlane:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Sports:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension Sports:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Diet:Double, CaseIterable{
    case yes = 0.5
    case no = 0.0
}
extension Diet:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Extreme:Double, CaseIterable{
    case yes = -1
    case no = 0.0
}
extension Extreme:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum HomePerson:Double, CaseIterable{
    case yes = 0.25
    case no = 0.0
}
extension HomePerson:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Texting:Double, CaseIterable{
    case yes = -3
    case no = 0.0
}
extension Texting:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Walker:Double, CaseIterable{
    case yes = -0.50
    case no = 0.0
}
extension Walker:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Crack:Double, CaseIterable{
    case yes = -1
    case no = 0.0
}
extension Crack:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum House:Double, CaseIterable{
    case yes = 1
    case no = 0.0
}
extension House:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Cheer:Double, CaseIterable{
    case yes = -3
    case no = 0.0
}
extension Cheer:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Danger:Double, CaseIterable{
    case yes = -2
    case no = 0.0
}
extension Danger:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Lights:Double, CaseIterable{
    case yes = -3
    case no = 0.0
}
extension Lights:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Hospital:Double, CaseIterable{
    case yes = 0.75
    case no = 0.0
}
extension Hospital:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Spiritual:Double, CaseIterable{
    case yes = 2.5
    case no = 0.0
}
extension Spiritual:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Crime:Double, CaseIterable{
    case yes = -3
    case no = 0.0
}
extension Crime:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum FireArm:Double, CaseIterable{
    case yes = -5
    case no = 0.0
}
extension FireArm:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Pub:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension Pub:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Fight:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension Fight:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Medication:Double, CaseIterable{
    case yes = -1
    case no = 0.0
}
extension Medication:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Security:Double, CaseIterable{
    case yes = 1
    case no = 0.0
}
extension Security:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum HitchHike:Double, CaseIterable{
    case yes = -0.75
    case no = 0.0
}
extension HitchHike:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Drugs:Double, CaseIterable{
    case yes = -2.5
    case no = 0.0
}
extension Drugs:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Dispute:Double, CaseIterable{
    case yes = -0.75
    case no = 0.0
}
extension Dispute:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Flood:Double, CaseIterable{
    case yes = -1
    case no = 0.0
}
extension Flood:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
enum Travel:Double, CaseIterable{
    case yes = -0.25
    case no = 0.0
}
extension Travel:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}
