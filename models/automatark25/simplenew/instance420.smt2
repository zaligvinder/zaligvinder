(declare-const X String)
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (str.in.re X (str.to.re "Subject:EnTrYExplorer*PORT2*Host:\x0a")))
(check-sat)
