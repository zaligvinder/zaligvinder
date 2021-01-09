(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (not (str.in.re X (re.++ (str.to.re "//flupdate/") (re.range "0" "9") (str.to.re ".html/iU\x0a")))))
(check-sat)
