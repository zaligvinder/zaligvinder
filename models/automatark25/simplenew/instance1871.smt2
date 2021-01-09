(declare-const X String)
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "]") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to.re "=") (re.* re.allchar) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.comp (str.to.re "["))) (str.to.re "\x0a"))))
(check-sat)
