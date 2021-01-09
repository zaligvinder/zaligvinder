(declare-const X String)
; ^[+-]?[0-9]+$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; /filename=[^\n]*\x2epdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a"))))
(check-sat)
