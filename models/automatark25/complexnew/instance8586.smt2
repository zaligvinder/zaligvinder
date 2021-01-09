(declare-const X String)
; ^(10\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5]\.[0-9]|[1-9][0-9]|[1-2][0-5][0-5])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "10.") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to.re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5") (str.to.re ".") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "5") (re.range "0" "5"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ek3g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a")))))
; DISK\s+\x2Fcgi\x2Flogurl\.cgiSubject\x3AinsertX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DISK") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cgi/logurl.cgiSubject:insertX-Mailer:\x13\x0a")))))
; ^((1[Zz]\d{16})|(\d{12})|([Tt]\d{10})|(\d{9}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "Z") (str.to.re "z")) ((_ re.loop 16 16) (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (re.++ (re.union (str.to.re "T") (str.to.re "t")) ((_ re.loop 10 10) (re.range "0" "9"))) ((_ re.loop 9 9) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
