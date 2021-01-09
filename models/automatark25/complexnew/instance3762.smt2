(declare-const X String)
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (not (str.in.re X (re.++ (str.to.re "//images2//U\x0a") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))))))
; ([0-9]|[0-9][0-9])\.\s
(assert (not (str.in.re X (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9")))))
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (str.in.re X (str.to.re "LogsHXLogOnlytoolbar.i-lookup.com\x0a")))
(check-sat)
