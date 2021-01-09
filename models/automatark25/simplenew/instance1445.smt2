(declare-const X String)
; /\/index\d{9}\.asp/i
(assert (str.in.re X (re.++ (str.to.re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".asp/i\x0a"))))
(check-sat)
