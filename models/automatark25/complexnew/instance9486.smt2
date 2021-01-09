(declare-const X String)
; EFError\swww\x2emalware-stopper\x2ecom
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a"))))
; (\/\/)(.+)(\/\/)
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ re.allchar) (str.to.re "//\x0a")))))
; ^(27|0)[0-9]{9}
(assert (not (str.in.re X (re.++ (re.union (str.to.re "27") (str.to.re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
