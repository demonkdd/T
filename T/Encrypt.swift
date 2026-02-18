//
//  Encrypt.swift
//  T
//
//  Created by Cameron Slaughter on 2/12/26.
//

import Foundation
import CryptoKit

enum CryptoError: Error {
    case invalidBase64
    case missingCombined
}

func generateAESKey() -> SymmetricKey {
    SymmetricKey(size: .bits256)
}

func aesGCMEncrypt(
    plaintext: Data,
    key: SymmetricKey,
    aad: Data? = nil
) throws -> String {
    let sealedBox: AES.GCM.SealedBox
    if let aad = aad {
        sealedBox = try AES.GCM.seal(plaintext, using: key, authenticating: aad)
    } else {
        sealedBox = try AES.GCM.seal(plaintext, using: key)
    }
    guard let combined = sealedBox.combined else {
        throw CryptoError.missingCombined
    }
    return combined.base64EncodedString()
}

func aesGCMDecrypt(
    base64Combined: String,
    key: SymmetricKey,
    aad: Data? = nil
) throws -> Data {
    guard let combined = Data(base64Encoded: base64Combined) else {
        throw CryptoError.invalidBase64
    }
    let sealedBox = try AES.GCM.SealedBox(combined: combined)
    if let aad = aad {
        return try AES.GCM.open(sealedBox, using: key, authenticating: aad)
    } else {
        return try AES.GCM.open(sealedBox, using: key)
    }
}


//let key = generateAESKey()
//let aad = Data("metadata".utf8)
//let encrypted = try aesGCMEncrypt(
//    plaintext: Data("hello".utf8),
//    key: key,
//    aad: aad
//)
//print(encrypted)
//let decrypted = try aesGCMDecrypt (
//    base64Combined: encrypted,
//    key: key,
//    aad: aad
//)
//print(String(data: decrypted, encoding: .utf8)!)
//need a box to ask if they want to provide further info(name/email) before sending data to server
