# Changelog

## [0.9.0](https://github.com/sirouk/namada-interface/compare/extension@v0.8.0...extension@v0.9.0) (2025-06-10)


### Features

* Add balance to masp overview ([#1169](https://github.com/sirouk/namada-interface/issues/1169)) ([38754bf](https://github.com/sirouk/namada-interface/commit/38754bf0e621a955837cb89d07a583b60f9614bf))
* Bump keychain version, update type docs ([#1363](https://github.com/sirouk/namada-interface/issues/1363)) ([eece967](https://github.com/sirouk/namada-interface/commit/eece96730099ba0d4f5f506c5b4cd2520c82e198))
* Extension - Add view and import Spending Key ([#1744](https://github.com/sirouk/namada-interface/issues/1744)) ([8306f47](https://github.com/sirouk/namada-interface/commit/8306f47aefc51bb4da1f5466637f3697ef87dcbf))
* Ibc unshielding ([#1920](https://github.com/sirouk/namada-interface/issues/1920)) ([2996391](https://github.com/sirouk/namada-interface/commit/29963912650c4401cb09163042fb889986e094f6))
* Keychain - Display chain name for known chains ([#1968](https://github.com/sirouk/namada-interface/issues/1968)) ([ab902e5](https://github.com/sirouk/namada-interface/commit/ab902e51564d24c238f1b7b0c0e6ad067decc9e5))
* Keychain - Increase session timeout from 5 to 30 minutes ([#2122](https://github.com/sirouk/namada-interface/issues/2122)) ([243c013](https://github.com/sirouk/namada-interface/commit/243c013356059cc7723b39ff2d60265b57b35cd1))
* Keychain signing - only require password on session timeout ([#1809](https://github.com/sirouk/namada-interface/issues/1809)) ([9050f64](https://github.com/sirouk/namada-interface/commit/9050f64d43125bc4b8c0f4faaee48dff473b3705))
* Keychain/Namadillo: Payment Address gen ([#1905](https://github.com/sirouk/namada-interface/issues/1905)) ([200bd4b](https://github.com/sirouk/namada-interface/commit/200bd4b400e36b5b216dc5a2facbe92c56c56b0b))
* Mark Ledger accounts missing shielded account as outdated ([#2099](https://github.com/sirouk/namada-interface/issues/2099)) ([ddb2f5c](https://github.com/sirouk/namada-interface/commit/ddb2f5cb568a20a8dc94110ec81adf59d39e2f78))
* Move sdk package into [@namada](https://github.com/namada) org ([#1230](https://github.com/sirouk/namada-interface/issues/1230)) ([0376020](https://github.com/sirouk/namada-interface/commit/0376020411a6b123376a39bce4240bb7468858ae))
* Notify about needed account re import ([#1452](https://github.com/sirouk/namada-interface/issues/1452)) ([f27adef](https://github.com/sirouk/namada-interface/commit/f27adef08462e19dabca43c66cd0bf1e2fac43b6))
* Shield nam ([#1165](https://github.com/sirouk/namada-interface/issues/1165)) ([e6b5530](https://github.com/sirouk/namada-interface/commit/e6b55307c77312a3bdde192ec721d5e84883d4ba))
* Tweaking black color on all apps ([#1784](https://github.com/sirouk/namada-interface/issues/1784)) ([a9460aa](https://github.com/sirouk/namada-interface/commit/a9460aa0ab0ea19605f8b7dd1e754f88f65d5501))
* Unshield + shielded transfers + disposable gas payer ([#1191](https://github.com/sirouk/namada-interface/issues/1191)) ([e8f0b39](https://github.com/sirouk/namada-interface/commit/e8f0b39452f0b7fac583ee7cb5812409378cfcd0))
* Update Keychain for new modified-zip32 ([#1624](https://github.com/sirouk/namada-interface/issues/1624)) ([b19caae](https://github.com/sirouk/namada-interface/commit/b19caae391b0411f51ee9b48325eeb62d421e7d3))
* Vks birthdays ([#1415](https://github.com/sirouk/namada-interface/issues/1415)) ([294031d](https://github.com/sirouk/namada-interface/commit/294031d8c7bf53c56fc81404b46d6c63ce13b651))


### Bug Fixes

* Add forgot password section on Extension ([#1917](https://github.com/sirouk/namada-interface/issues/1917)) ([49a765b](https://github.com/sirouk/namada-interface/commit/49a765b82892c6a3c063028633b0cfa0ecbfb6ca))
* Disposable gas payer timeout & ibc shielding with multicore ([#1593](https://github.com/sirouk/namada-interface/issues/1593)) ([a1cb27a](https://github.com/sirouk/namada-interface/commit/a1cb27a26c0bbad3e558c4bcec37305cf0602083))
* Keychain - Don't display approve connection form if already approved ([#1927](https://github.com/sirouk/namada-interface/issues/1927)) ([b234528](https://github.com/sirouk/namada-interface/commit/b234528c1c72d2dbd41ba59711e330449d69aec0))
* Pass proper path to deriveShieldedFromSeed ([#1690](https://github.com/sirouk/namada-interface/issues/1690)) ([7b94f9e](https://github.com/sirouk/namada-interface/commit/7b94f9e422a32620613f20b8fd349e630077a3fb))
* Remove old dompurify, switch to new one ([#1549](https://github.com/sirouk/namada-interface/issues/1549)) ([51953b1](https://github.com/sirouk/namada-interface/commit/51953b1ee126d200caa64de9682f70ce2338cf3f))
* Remove unneeded Firefox instruction ([#1347](https://github.com/sirouk/namada-interface/issues/1347)) ([4096d39](https://github.com/sirouk/namada-interface/commit/4096d393bf23de741ee107efb65f1b6ab51e9f20))
* Rename remaining instances of Namada Extension ([#1134](https://github.com/sirouk/namada-interface/issues/1134)) ([07feb93](https://github.com/sirouk/namada-interface/commit/07feb9324af9b02e3dd5edee3e5456f7c3e0c4a8))
* SDK and extension should use the same ledger-namada package ([#1376](https://github.com/sirouk/namada-interface/issues/1376)) ([7fa916b](https://github.com/sirouk/namada-interface/commit/7fa916b049b2dacc9b9dca7ee062319f8c2bee5a))
* Unregister buggy service worker ([#1725](https://github.com/sirouk/namada-interface/issues/1725)) ([5b70454](https://github.com/sirouk/namada-interface/commit/5b704547cd5fd250f8db390fe28bcf693c813d57))
* Update password checker when second input is used first ([#1921](https://github.com/sirouk/namada-interface/issues/1921)) ([949f325](https://github.com/sirouk/namada-interface/commit/949f3254cdc03c33be5875ac14f1e44dc4577e41))

## [0.8.0](https://github.com/anoma/namada-interface/compare/extension@v0.7.0...extension@v0.8.0) (2025-06-10)


### Features

* Keychain - Increase session timeout from 5 to 30 minutes ([#2122](https://github.com/anoma/namada-interface/issues/2122)) ([243c013](https://github.com/anoma/namada-interface/commit/243c013356059cc7723b39ff2d60265b57b35cd1))

## [0.7.0](https://github.com/anoma/namada-interface/compare/extension@v0.6.0...extension@v0.7.0) (2025-06-07)


### Features

* Mark Ledger accounts missing shielded account as outdated ([#2099](https://github.com/anoma/namada-interface/issues/2099)) ([ddb2f5c](https://github.com/anoma/namada-interface/commit/ddb2f5cb568a20a8dc94110ec81adf59d39e2f78))

## [0.6.0](https://github.com/anoma/namada-interface/compare/extension@v0.5.0...extension@v0.6.0) (2025-04-18)


### Features

* Ibc unshielding ([#1920](https://github.com/anoma/namada-interface/issues/1920)) ([2996391](https://github.com/anoma/namada-interface/commit/29963912650c4401cb09163042fb889986e094f6))
* Keychain - Display chain name for known chains ([#1968](https://github.com/anoma/namada-interface/issues/1968)) ([ab902e5](https://github.com/anoma/namada-interface/commit/ab902e51564d24c238f1b7b0c0e6ad067decc9e5))
* Keychain signing - only require password on session timeout ([#1809](https://github.com/anoma/namada-interface/issues/1809)) ([9050f64](https://github.com/anoma/namada-interface/commit/9050f64d43125bc4b8c0f4faaee48dff473b3705))
* Keychain/Namadillo: Payment Address gen ([#1905](https://github.com/anoma/namada-interface/issues/1905)) ([200bd4b](https://github.com/anoma/namada-interface/commit/200bd4b400e36b5b216dc5a2facbe92c56c56b0b))


### Bug Fixes

* Add forgot password section on Extension ([#1917](https://github.com/anoma/namada-interface/issues/1917)) ([49a765b](https://github.com/anoma/namada-interface/commit/49a765b82892c6a3c063028633b0cfa0ecbfb6ca))
* Keychain - Don't display approve connection form if already approved ([#1927](https://github.com/anoma/namada-interface/issues/1927)) ([b234528](https://github.com/anoma/namada-interface/commit/b234528c1c72d2dbd41ba59711e330449d69aec0))
* Update password checker when second input is used first ([#1921](https://github.com/anoma/namada-interface/issues/1921)) ([949f325](https://github.com/anoma/namada-interface/commit/949f3254cdc03c33be5875ac14f1e44dc4577e41))

## [0.5.0](https://github.com/anoma/namada-interface/compare/extension@v0.4.1...extension@v0.5.0) (2025-02-28)

### Features

- Extension - Add view and import Spending Key ([#1744](https://github.com/anoma/namada-interface/issues/1744)) ([8306f47](https://github.com/anoma/namada-interface/commit/8306f47aefc51bb4da1f5466637f3697ef87dcbf))
- Tweaking black color on all apps ([#1784](https://github.com/anoma/namada-interface/issues/1784)) ([a9460aa](https://github.com/anoma/namada-interface/commit/a9460aa0ab0ea19605f8b7dd1e754f88f65d5501))
- Ledger MASP Integration ([#746](https://github.com/anoma/namada-interface/issues/746)) ([4def21d](https://github.com/anoma/namada-interface/commit/4def21d0e1b8bc16ac85bd3022bf2e66c9c99da9))

### Bug Fixes

- Unregister buggy service worker ([#1725](https://github.com/anoma/namada-interface/issues/1725)) ([5b70454](https://github.com/anoma/namada-interface/commit/5b704547cd5fd250f8db390fe28bcf693c813d57))

## [0.4.1](https://github.com/anoma/namada-interface/compare/extension@v0.4.0...extension@v0.4.1) (2025-02-20)

### Bug Fixes

- Pass proper path to deriveShieldedFromSeed ([#1690](https://github.com/anoma/namada-interface/issues/1690)) ([7b94f9e](https://github.com/anoma/namada-interface/commit/7b94f9e422a32620613f20b8fd349e630077a3fb))

## [0.4.0](https://github.com/anoma/namada-interface/compare/extension-v0.3.7...extension@v0.4.0) (2025-02-18)

### Features

- Unshield + shielded transfers + disposable gas payer ([#1191](https://github.com/anoma/namada-interface/issues/1191)) ([e8f0b39](https://github.com/anoma/namada-interface/commit/e8f0b39452f0b7fac583ee7cb5812409378cfcd0))
- Update Keychain for new modified-zip32 ([#1624](https://github.com/anoma/namada-interface/issues/1624)) ([b19caae](https://github.com/anoma/namada-interface/commit/b19caae391b0411f51ee9b48325eeb62d421e7d3))
