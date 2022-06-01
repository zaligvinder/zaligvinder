(declare-const X String)
; ^[0-9]+([\,|\.]{0,1}[0-9]{2}){0,1}$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ",") (str.to_re "|") (str.to_re "."))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
