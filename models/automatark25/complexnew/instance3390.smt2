(declare-const X String)
; /\bobj\x0a\x20*?\/Pattern\x20*?\x0aendobj\b/i
(assert (not (str.in.re X (re.++ (str.to.re "/obj\x0a") (re.* (str.to.re " ")) (str.to.re "/Pattern") (re.* (str.to.re " ")) (str.to.re "\x0aendobj/i\x0a")))))
; \"[^"]+\"|\([^)]+\)|[^\"\s\()]+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ")")) (re.++ (re.+ (re.union (str.to.re "\x22") (str.to.re "(") (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
; ^[0-9]{4}\s{0,1}[a-zA-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^([A-Z]{2}[\s]|[A-Z]{2})[\w]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
