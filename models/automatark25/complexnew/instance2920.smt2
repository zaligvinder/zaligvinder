(declare-const X String)
; port\d+\.compress\s+aresflashdownloader\x2Ecomv\x2Edll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in.re X (re.++ (str.to.re "port") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.comv.dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a"))))
; ^([V|E|J|G|v|e|j|g])([0-9]{5,8})$
(assert (str.in.re X (re.++ (re.union (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G") (str.to.re "v") (str.to.re "e") (str.to.re "j") (str.to.re "g")) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
