(declare-const X String)
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a")))))
(check-sat)
