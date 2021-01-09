(declare-const X String)
; /\/ddd\/[a-z]{2}.gif/iU
(assert (not (str.in.re X (re.++ (str.to.re "//ddd/") ((_ re.loop 2 2) (re.range "a" "z")) re.allchar (str.to.re "gif/iU\x0a")))))
(check-sat)
