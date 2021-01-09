(declare-const X String)
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a")))
(check-sat)
