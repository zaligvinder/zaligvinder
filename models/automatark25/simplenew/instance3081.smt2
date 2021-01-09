(declare-const X String)
; \x2Fta\x2FNEWS\x2F\d+Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/ta/NEWS/") (re.+ (re.range "0" "9")) (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a"))))
(check-sat)
