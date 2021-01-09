(declare-const X String)
; /filename=[^\n]*\x2exlsx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlsx/i\x0a")))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a"))))
; /\/[a-z0-9]{12}\.txt$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 12 12) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".txt/U\x0a"))))
; /^\x2f\x3fxclve\x5f[a-zA-Z0-9]{30}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//?xclve_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
