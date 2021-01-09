(declare-const X String)
; /filename=[^\n]*\x2em4r/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a"))))
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a"))))
(check-sat)
