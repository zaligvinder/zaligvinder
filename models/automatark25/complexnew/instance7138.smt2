(declare-const X String)
; [a-zA-Z0-9_\\-]+@([a-zA-Z0-9_\\-]+\\.)+(com)
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "\x5c") re.allchar)) (str.to.re "com\x0a"))))
; ^\+[0-9]{1,3}\([0-9]{3}\)[0-9]{7}$
(assert (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[^ ,0]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a"))))
; <body[\d\sa-z\W\S\s]*>
(assert (str.in.re X (re.++ (str.to.re "<body") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "HTTP_RAT_\x0a")))))
(check-sat)
