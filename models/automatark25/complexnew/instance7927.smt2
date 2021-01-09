(declare-const X String)
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; ^([a-zA-Z0-9])+\\{1}([a-zA-Z0-9])+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
