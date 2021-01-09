(declare-const X String)
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))
(check-sat)
