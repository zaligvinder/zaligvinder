(declare-const X String)
; Subject\x3aFTPdistdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "Subject:FTPdistdcww.dmcast.com\x0a"))))
(check-sat)
