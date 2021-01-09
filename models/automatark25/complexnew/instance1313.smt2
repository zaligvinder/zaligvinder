(declare-const X String)
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a"))))
; ^\.{1}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ".")) (str.to.re "\x0a"))))
; /^dns\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/dns|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; /\x2Fdirect\.php\x3Ff=[0-9]{8}\x26s=[a-z0-9]{3}\.[a-z]{1,4}/U
(assert (str.in.re X (re.++ (str.to.re "//direct.php?f=") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "&s=") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/U\x0a"))))
(check-sat)
