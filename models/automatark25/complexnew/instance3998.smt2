(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "InformationHost:badurl.grandstreetinteractive.com\x0a"))))
; ((0)+(\.[1-9](\d)?))|((0)+(\.(\d)[1-9]+))|(([1-9]+(0)?)+(\.\d+)?)|(([1-9]+(0)?)+(\.\d+)?)
(assert (not (str.in.re X (re.union (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in.re X (str.to.re "Validation of Mexican RFC for tax payers individuals\x0a"))))
; Toolbar\d+Host\x3A\d+4\x2e8\x2e4\x7D\x7BTrojan\x3Aare
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "4.8.4}{Trojan:are\x0a"))))
(check-sat)
