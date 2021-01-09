(declare-const X String)
; 3Awww\x2eurlblaze\x2enetulmxct\x2fmqoycEFErrorHost\x3Ae2give\.com
(assert (not (str.in.re X (str.to.re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\x0a"))))
; /^UPDATE\|[0-9]\.[0-9]\.[0-9]\|[A-F0-9]{48}\|{3}$/
(assert (str.in.re X (re.++ (str.to.re "/UPDATE|") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re "|") ((_ re.loop 48 48) (re.union (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (str.to.re "|")) (str.to.re "/\x0a"))))
; ^(\d{2}-\d{2})*$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
