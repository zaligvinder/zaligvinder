(declare-const X String)
; LOGNetBusCookie\u{3a}Toolbar
(assert (not (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}"))))
; /filename=[^\n]*\u{2e}mim/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mim/i\u{a}"))))
; ProAgentHost\u{3a}Host\u{3A}iOpuss_sq=aolsnssigninwininet
(assert (not (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}"))))
(check-sat)
