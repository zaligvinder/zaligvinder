(declare-const X String)
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//setup_b.asp?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
(check-sat)
