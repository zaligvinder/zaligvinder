(declare-const X String)
; /(action|setup)=[a-z]{1,4}/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "action") (str.to.re "setup")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/Ri\x0a")))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\x13\x0a")))))
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (not (str.in.re X (str.to.re "ProSpywww.emp3finder.comwww\x0a"))))
(check-sat)
