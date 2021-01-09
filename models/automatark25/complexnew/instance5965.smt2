(declare-const X String)
; ^([^:])+\\.([^:])+$
(assert (str.in.re X (re.++ (re.+ (re.comp (str.to.re ":"))) (str.to.re "\x5c") re.allchar (re.+ (re.comp (str.to.re ":"))) (str.to.re "\x0a"))))
; Spy\s+\x0d\x0a.*YAHOOdestroyed\x21Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0d\x0a") (re.* re.allchar) (str.to.re "YAHOOdestroyed!Host:\x0a")))))
; ^\d{0,2}(\.\d{1,2})?$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \x7D\x7BTrojan\x3Abacktrust\x2EcomHost\x3Apjpoptwql\x2frlnj
(assert (not (str.in.re X (str.to.re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\x0a"))))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a")))
(check-sat)
