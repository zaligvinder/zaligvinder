(declare-const X String)
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to_re "tz")) (re.union (str.to_re "man") (str.to_re "berg")) (str.to_re "\u{a}"))))
(check-sat)
