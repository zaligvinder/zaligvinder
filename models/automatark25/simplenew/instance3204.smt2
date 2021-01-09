(declare-const X String)
; @{2}((\S)+)@{2}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 2 2) (str.to.re "@")) (str.to.re "\x0a"))))
(check-sat)
