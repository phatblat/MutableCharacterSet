//
//  main.swift
//  MutableCharacterSet
//
//  Created by Ben Chatelain on 6/18/16.
//  Copyright © 2016 Ben Chatelain. All rights reserved.
//

import Foundation

public extension String {
    func urlEncodedString() -> String? {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        var characterSet = NSCharacterSet.urlQueryAllowed()
        characterSet.remove(charactersIn: generalDelimitersToEncode + subDelimitersToEncode)
        return addingPercentEncoding(withAllowedCharacters: characterSet)
    }
}

print("1234".urlEncodedString())
