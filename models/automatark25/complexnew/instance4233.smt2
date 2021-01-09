(declare-const X String)
; ^(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)|((([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+))\:)*(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re ":"))) (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
; OVN\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.com
(assert (str.in.re X (re.++ (str.to.re "OVN") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.com\x0a"))))
; ^(\d+\.\d+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
