(declare-const X String)
; www\u{2E}purityscan\u{2E}com.*
(assert (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
