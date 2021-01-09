(declare-const X String)
; (\$\s*[\d,]+\.\d{2})\b
(assert (not (str.in.re X (re.++ (str.to.re "\x0a$") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
