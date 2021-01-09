(declare-const X String)
; A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a")))))
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspx\x0a"))))
; ^(000000[1-9])$|^(00000[1-9][0-9])$|^(0000[1-9][0-9][0-9])$|^(000[1-9][0-9][0-9][0-9])$|^(00[1-9][0-9][0-9][0-9][0-9])$|^(0[1-9][0-9][0-9][0-9][0-9][0-9])$|^([1-9][0-9][0-9][0-9][0-9][0-9][0-9])$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "000000") (re.range "1" "9")) (re.++ (str.to.re "00000") (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "0000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "00") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))))
(check-sat)
