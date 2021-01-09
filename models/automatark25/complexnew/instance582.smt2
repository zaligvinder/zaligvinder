(declare-const X String)
; ^[A-Z].*$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.* re.allchar) (str.to.re "\x0a"))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; [\t ]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a"))))
(check-sat)
