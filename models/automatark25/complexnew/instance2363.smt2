(declare-const X String)
; ^(\d{5}-\d{2}-\d{7})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a")))))
; [^<>/?&{};#]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "/") (str.to.re "?") (str.to.re "&") (str.to.re "{") (str.to.re "}") (str.to.re ";") (str.to.re "#"))) (str.to.re "\x0a")))))
; (<input )(.*?)(>)
(assert (not (str.in.re X (re.++ (str.to.re "<input ") (re.* re.allchar) (str.to.re ">\x0a")))))
(check-sat)
