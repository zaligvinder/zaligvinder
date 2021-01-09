(declare-const X String)
; ^((\-|d|l|p|s){1}(\-|r|w|x){9})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "d") (str.to.re "l") (str.to.re "p") (str.to.re "s"))) ((_ re.loop 9 9) (re.union (str.to.re "-") (str.to.re "r") (str.to.re "w") (str.to.re "x"))))))
; /filename=[^\n]*\x2ewk4/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wk4/i\x0a"))))
(check-sat)
