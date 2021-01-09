(declare-const X String)
; ^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.range "A" "Z") (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "0" "9") (str.to.re "\x0a")))))
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a")))))
(check-sat)
