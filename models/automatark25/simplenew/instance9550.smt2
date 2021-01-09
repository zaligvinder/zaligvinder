(declare-const X String)
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (str.in.re X (re.++ (str.to.re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "/U\x0a"))))
(check-sat)
