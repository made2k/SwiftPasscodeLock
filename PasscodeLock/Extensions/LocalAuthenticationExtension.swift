//
//  LocalAuthenticationExtension.swift
//  PasscodeLock
//
//  Created by Zach McGaughey on 9/16/19.
//  Copyright © 2019 Yanko Dimitrov. All rights reserved.
//

import LocalAuthentication

extension LAContext {
    
    static func biometricType() -> LABiometryType {
        
        let authContext = LAContext()
        
        let _ = authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        switch(authContext.biometryType) {
        case .none:
            return .LABiometryNone
            
        case .touchID:
            return .touchID
            
        case .faceID:
            return .faceID
            
        @unknown default:
            return .LABiometryNone
        }
        
    }
    
}
