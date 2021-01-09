(declare-const X String)
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "Iterenetbadurl.grandstreetinteractive.com\x0a"))))
; Host\x3anotificationwww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:notification\x13www.thecommunicator.net\x0a")))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
