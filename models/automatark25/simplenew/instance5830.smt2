(declare-const X String)
; www\u{2e}proventactics\u{2e}comKeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (str.to_re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}"))))
(check-sat)
