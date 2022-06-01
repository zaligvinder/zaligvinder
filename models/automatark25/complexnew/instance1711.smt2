(declare-const X String)
; ^\(?082|083|084|072\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "(")) (str.to_re "082")) (str.to_re "083") (str.to_re "084") (re.++ (str.to_re "072") (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}vap/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vap/i\u{a}"))))
; /filename=[^\n]*\u{2e}wm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}"))))
; ^1?[1-9]$|^[1-2]0$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to_re "0\u{a}")))))
; (\_\_)(.+)(\_\_)
(assert (not (str.in_re X (re.++ (str.to_re "__") (re.+ re.allchar) (str.to_re "__\u{a}")))))
(check-sat)
