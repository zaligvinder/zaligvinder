(declare-const X String)
; ^[3|4|5|6]([0-9]{15}$|[0-9]{12}$|[0-9]{13}$|[0-9]{14}$)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "3") (str.to.re "|") (str.to.re "4") (str.to.re "5") (str.to.re "6")) (re.union ((_ re.loop 15 15) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9")) ((_ re.loop 14 14) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /^[oz]/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "o") (str.to.re "z")) (str.to.re "/Ri\x0a")))))
; /filename=[^\n]*\x2exls/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xls/i\x0a")))))
; ^\d{4,4}[A-Z0-9]$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a"))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
