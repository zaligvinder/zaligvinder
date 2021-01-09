(declare-const X String)
; /filename=[^\n]*\x2edocm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a")))))
; ^(1?)(-| ?)(\()?([0-9]{3})(\)|-| |\)-|\) )?([0-9]{3})(-| )?([0-9]{4}|[0-9]{4})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.union (str.to.re "-") (re.opt (str.to.re " "))) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re "-") (str.to.re " ") (str.to.re ")-") (str.to.re ") "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
; url=\"([^\[\]\"]*)\"
(assert (not (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
(check-sat)
