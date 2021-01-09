(declare-const X String)
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a"))))
(check-sat)
