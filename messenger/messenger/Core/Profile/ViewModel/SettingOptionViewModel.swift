//
//  SettingOptionViewModel.swift
//  messenger
//
//  Created by Пользователь on 10.04.2024.
//

import SwiftUI

enum SettingOptionViewModel:Int, CaseIterable, Identifiable{
    
    case darkMode
    case activeStatus
    case acceddibility
    case privacyAndSafety
    case notificstions
    
    var title: String{
        switch self{
        case .darkMode: return "Dark mode"
        case .activeStatus: return "Active Status"
        case .acceddibility: return "Acceddibility"
        case .privacyAndSafety: return "Privacy and Safety"
        case .notificstions: return "notificstions"
        }
    }
    
    var imageName: String{
        switch self{
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .acceddibility: return "person.circle.fill"
        case .privacyAndSafety: return "lock.circle.fill"
        case .notificstions: return "bell.circle.fill"
        }
    }
    
    var colorImage: Color{
        switch self{
        case .darkMode: return Color.black
        case .activeStatus: return Color(.systemGreen)
        case .acceddibility: return Color.black
        case .privacyAndSafety: return Color(.systemBlue)
        case .notificstions: return Color(.systemPurple)
        }
    }
    
    var id: Int {return self.rawValue}
}
