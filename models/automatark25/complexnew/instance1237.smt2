(declare-const X String)
; /\x2Fdirect\.php\x3Ff=[0-9]{8}\x26s=[a-z0-9]{3}\.[a-z]{1,4}/U
(assert (not (str.in.re X (re.++ (str.to.re "//direct.php?f=") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "&s=") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/U\x0a")))))
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a"))))
(check-sat)
