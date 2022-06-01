(declare-const X String)
; httphost\dActivityfilename=\u{22}
(assert (str.in_re X (re.++ (str.to_re "httphost") (re.range "0" "9") (str.to_re "Activityfilename=\u{22}\u{a}"))))
(check-sat)
