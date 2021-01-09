(declare-const X String)
; ^[^']*$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "'"))) (str.to.re "\x0a"))))
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (re.+ (re.range "0" "9")) (str.to.re "v=User-Agent:\x0a"))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (str.in.re X (re.++ (str.to.re "/&tv=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/smiU\x0a"))))
(check-sat)
