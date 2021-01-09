(declare-const X String)
; ^[^#]([^ ]+ ){6}[^ ]+$
(assert (str.in.re X (re.++ (re.comp (str.to.re "#")) ((_ re.loop 6 6) (re.++ (re.+ (re.comp (str.to.re " "))) (str.to.re " "))) (re.+ (re.comp (str.to.re " "))) (str.to.re "\x0a"))))
(check-sat)
