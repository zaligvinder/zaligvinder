(declare-const X String)
; /filename=[^\n]*\u{2e}m4r/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4r/i\u{a}"))))
; www\u{2e}proventactics\u{2e}comKeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (str.to_re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}"))))
(check-sat)
