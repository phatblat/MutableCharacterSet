# MutableCharacterSet

macOS command line project demonstrating an issue with removing characters from a mutable `CharacterSet` in Swift 3.

## `NSCharacterSet.urlQueryAllowed()` (working)

### Type

```
(lldb) po characterSet
▿ <__NSCFCharacterSet: 0x100a074b0>
  ▿ _wrapped : <Foundation._SwiftNSCharacterSet: 0x100a079b0>
```

### Output

```
Optional("1234")
Program ended with exit code: 0
```


## `CharacterSet.urlQueryAllowed` (crashes)

### Type

```
(lldb) po characterSet
▿ <Foundation._SwiftNSCharacterSet: 0x100e00fc0>
  ▿ _wrapped : <Foundation._SwiftNSCharacterSet: 0x100e01070>
```

### Output

```
2016-06-18 22:18:48.143 MutableCharacterSet[55285:1881882] Abstract class Foundation._SwiftNSCharacterSet does not implement method mutableCopyWithZone:; it must be implemented in subclasses.
2016-06-18 22:18:48.144 MutableCharacterSet[55285:1881882] -[Foundation._SwiftNSCharacterSet mutableCopyWithZone:]: unrecognized selector sent to instance 0x100a02380
-[Foundation._SwiftNSCharacterSet mutableCopyWithZone:]: unrecognized selector sent to instance 0x100a02380

4306502296

objc[55285]: pthread_rwlock_rdlock failed (11)
```


## License

This repo is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for rights and limitations.

