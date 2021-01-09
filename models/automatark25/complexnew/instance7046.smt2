(declare-const X String)
; ^\+[0-9]{1,3}\([0-9]{3}\)[0-9]{7}$
(assert (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "IPAnaloffers.bullseye-network.com\x0a"))))
; /([^\x00-\xFF]\s*)/u
(assert (not (str.in.re X (re.++ (str.to.re "//u\x0a") (re.range "\x00" "\xff") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)
