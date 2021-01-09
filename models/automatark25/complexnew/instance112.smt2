(declare-const X String)
; /^sleep\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/sleep|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "D") (str.to.re "J") (str.to.re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GETwww.oemji.com\x0a"))))
(check-sat)
