(declare-const X String)
; ^((1[Zz]\d{16})|(\d{12})|([Tt]\d{10})|(\d{9}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "Z") (str.to.re "z")) ((_ re.loop 16 16) (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (re.++ (re.union (str.to.re "T") (str.to.re "t")) ((_ re.loop 10 10) (re.range "0" "9"))) ((_ re.loop 9 9) (re.range "0" "9"))) (str.to.re "\x0a")))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a"))))
(check-sat)
