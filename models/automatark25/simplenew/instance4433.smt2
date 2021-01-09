(declare-const X String)
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a")))))
(check-sat)
