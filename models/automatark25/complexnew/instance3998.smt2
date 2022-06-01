(declare-const X String)
; InformationHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}"))))
; ((0)+(\.[1-9](\d)?))|((0)+(\.(\d)[1-9]+))|(([1-9]+(0)?)+(\.\d+)?)|(([1-9]+(0)?)+(\.\d+)?)
(assert (not (str.in_re X (re.union (re.++ (re.+ (str.to_re "0")) (str.to_re ".") (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (re.+ (str.to_re "0")) (str.to_re ".") (re.range "0" "9") (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to_re "0")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "\u{a}") (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to_re "0")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in_re X (str.to_re "Validation of Mexican RFC for tax payers individuals\u{a}"))))
; Toolbar\d+Host\u{3A}\d+4\u{2e}8\u{2e}4\u{7D}\u{7B}Trojan\u{3A}are
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "4.8.4}{Trojan:are\u{a}"))))
(check-sat)
