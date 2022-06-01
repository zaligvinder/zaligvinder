(declare-const X String)
; /filename=[\u{22}\u{27}]?\d\.exe[\u{22}\u{27}]?/Hi
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.range "0" "9") (str.to_re ".exe") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/Hi\u{a}"))))
(check-sat)
