(declare-const X String)
; ^\d{1,5}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Basic\s+news\s+CD\x2Furl=Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/url=Host:\x0a")))))
(check-sat)
