// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for PersonalizeEvents
public enum PersonalizeEventsErrorType: AWSErrorType {
    case invalidInputException(message: String?)
}

extension PersonalizeEventsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        default:
            return nil
        }
    }
}