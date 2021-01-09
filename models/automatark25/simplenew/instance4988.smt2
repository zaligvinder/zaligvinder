(declare-const X String)
; /\x02[^\x0a]+\x3a[^\x0a]+\x0a/
(assert (str.in.re X (re.++ (str.to.re "/\x02") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re "\x0a/\x0a"))))
(check-sat)
