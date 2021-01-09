(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a"))))
; ^[A-Z]{1,3}\d{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc\x0a"))))
(check-sat)
