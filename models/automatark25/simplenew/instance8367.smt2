(declare-const X String)
; act=\s+smrtshpr-cs-verDANavExcel
(assert (not (str.in.re X (re.++ (str.to.re "act=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13verDANavExcel\x0a")))))
(check-sat)
