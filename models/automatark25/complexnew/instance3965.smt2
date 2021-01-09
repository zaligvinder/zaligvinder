(declare-const X String)
; (^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
; \"[^"]+\"|\([^)]+\)|[^\"\s\()]+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ")")) (re.++ (re.+ (re.union (str.to.re "\x22") (str.to.re "(") (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
(check-sat)
