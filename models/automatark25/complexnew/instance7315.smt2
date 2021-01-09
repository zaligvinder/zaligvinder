(declare-const X String)
; ^(9|2{1})+([1-9]{1})+([0-9]{7})$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "9") ((_ re.loop 1 1) (str.to.re "2")))) (re.+ ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; Information.*Firewall\s+ised2k\xc0STATUS\xc0Server
(assert (not (str.in.re X (re.++ (str.to.re "Information") (re.* re.allchar) (str.to.re "Firewall") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ised2k\xc0STATUS\xc0Server\x13\x0a")))))
(check-sat)
