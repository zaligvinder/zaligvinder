(declare-const X String)
; /filename=[^\n]*\x2empg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpg/i\x0a"))))
; /\x2F[a-z]+\x2epng/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re ".png/Ui\x0a")))))
; ^([1-9]|1[0-2])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
; Subject\x3aFTPdistdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "Subject:FTPdistdcww.dmcast.com\x0a"))))
(check-sat)
