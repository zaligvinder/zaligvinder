(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (not (str.in.re X (str.to.re "LOGNetBusCookie:Toolbar\x0a"))))
; /filename=[^\n]*\x2emim/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mim/i\x0a"))))
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (not (str.in.re X (str.to.re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\x0a"))))
(check-sat)
