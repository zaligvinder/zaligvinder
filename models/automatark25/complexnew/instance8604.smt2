(declare-const X String)
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re "+") (str.to.re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (str.in.re X (re.++ (str.to.re "SpywareStrike") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar\x0a"))))
; ^[^']*$
(assert (not (str.in.re X (re.++ (re.* (re.comp (str.to.re "'"))) (str.to.re "\x0a")))))
(check-sat)
