(declare-const X String)
; WinSession\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|CurrentiOpus\x0a")))))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (str.in.re X (str.to.re "Subject:AlexaOnline%21%21%21\x0a")))
(check-sat)
