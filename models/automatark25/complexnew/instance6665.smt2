(declare-const X String)
; (^\d{3}\u{2E}\d{3}\u{2E}\d{3}\u{2D}\d{2}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; /\u{2e}xul([\?\u{5c}\u{2f}]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.xul") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
; /filename=[a-z]{5,8}\d{2,3}\.xap\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".xap\u{d}\u{a}/Hm\u{a}"))))
(check-sat)
