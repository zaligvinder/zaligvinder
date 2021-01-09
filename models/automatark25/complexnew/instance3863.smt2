(declare-const X String)
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a"))))
; /filename=[^\n]*\x2esmil/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a"))))
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aReferer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to.re "&sid=") (re.+ (re.range "0" "9")) (str.to.re "&sn=") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
