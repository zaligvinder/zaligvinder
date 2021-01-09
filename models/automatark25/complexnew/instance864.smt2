(declare-const X String)
; ^(\d|,)*\.?\d*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ejpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpeg/i\x0a"))))
; ^([A-Z]{1,2}[0-9]{1,2}|[A-Z]{3}|[A-Z]{1,2}[0-9][A-Z])( |-)[0-9][A-Z]{2}
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.union (str.to.re " ") (str.to.re "-")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; /(\x19\x00|\x00\x5C)\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
(check-sat)
