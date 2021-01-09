(declare-const X String)
; httphost\dActivityfilename=\x22
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.range "0" "9") (str.to.re "Activityfilename=\x22\x0a"))))
(check-sat)
