(declare-const X String)
; ^((\(?\+45\)?)?)(\s?\d{2}\s?\d{2}\s?\d{2}\s?\d{2})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (str.to.re "+45") (re.opt (str.to.re ")")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9"))))))
; ^(([+]|00)39)?((3[1-6][0-9]))(\d{7})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "00")) (str.to.re "39"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a3") (re.range "1" "6") (re.range "0" "9"))))
; User-Agent\x3AServerHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:ServerHost:\x0a")))
(check-sat)
