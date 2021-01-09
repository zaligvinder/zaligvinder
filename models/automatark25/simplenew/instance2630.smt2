(declare-const X String)
; EFError\swww\x2emalware-stopper\x2ecom
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a"))))
(check-sat)
