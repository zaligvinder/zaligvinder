(declare-const X String)
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (re.+ (re.range "0" "9")) (str.to.re "v=User-Agent:\x0a")))))
; (.|[\r\n]){1,5}
(assert (str.in.re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a"))))
; ^([A-Z]{0,3}?[0-9]{9}($[0-9]{0}|[A-Z]{1}))
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union ((_ re.loop 0 0) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z"))))))
; \A([0-9a-zA-Z_]{1,15})|(@([0-9a-zA-Z_]{1,15}))\Z
(assert (not (str.in.re X (re.union ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.++ (str.to.re "\x0a@") ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))))))))
(check-sat)
