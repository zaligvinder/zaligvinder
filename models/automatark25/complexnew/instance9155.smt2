(declare-const X String)
; /filename=[^\n]*\x2emaplet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a"))))
; ^\d{4}\/\d{1,2}\/\d{1,2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /(\x19\x00|\x00\x5C)\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a"))))
; connection\sHost\x3aSubject\x3A\.bmp
(assert (str.in.re X (re.++ (str.to.re "connection") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Subject:.bmp\x0a"))))
; ^\d*(\.\d*)$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9"))))))
(check-sat)
