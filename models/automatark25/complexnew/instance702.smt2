(declare-const X String)
; ^[89][0-9]{9}
(assert (str.in.re X (re.++ (re.union (str.to.re "8") (str.to.re "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d{5}((-|\s)?\d{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2emkv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a")))))
(check-sat)
