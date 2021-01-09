(declare-const X String)
; ^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re " ") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re "\x0a"))))
; wp-includes\x2Ftheme\x2Ephp\x3F.*Apofis\s+TencentTraveler
(assert (str.in.re X (re.++ (str.to.re "wp-includes/theme.php?") (re.* re.allchar) (str.to.re "Apofis") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler\x0a"))))
; (CY-?)?[0-9]{8}[A-Z]
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CY") (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a"))))
; ^01[0-2]{1}[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
