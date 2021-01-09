(declare-const X String)
; ^\d$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ecsv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a"))))
(check-sat)
