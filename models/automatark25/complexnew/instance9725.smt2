(declare-const X String)
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; \(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\)
(assert (not (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ")\x0a")))))
(check-sat)
