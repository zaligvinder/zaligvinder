(declare-const X String)
; /\.(jsp|html)\?[^\r\n]*PG=SPEEDBAR/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jsp") (str.to.re "html")) (str.to.re "?") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "PG=SPEEDBAR/Ui\x0a")))))
(check-sat)
