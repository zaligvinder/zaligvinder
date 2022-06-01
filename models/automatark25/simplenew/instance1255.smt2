(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (not (str.in_re X (re.++ (str.to_re "//flupdate/") (re.range "0" "9") (str.to_re ".html/iU\u{a}")))))
(check-sat)
