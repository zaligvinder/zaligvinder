(declare-const X String)
; CUSTOM\swww\x2Elocators\x2Ecom\d+Seconds\-
(assert (not (str.in.re X (re.++ (str.to.re "CUSTOM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.locators.com") (re.+ (re.range "0" "9")) (str.to.re "Seconds-\x0a")))))
; [0-9][.][0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2Fmrow\x5Fpin\x2F\x3Fid\d+[a-z]{5,}\d{5}\x26rnd\x3D\d+/smi
(assert (not (str.in.re X (re.++ (str.to.re "//mrow_pin/?id") (re.+ (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "&rnd=") (re.+ (re.range "0" "9")) (str.to.re "/smi\x0a") ((_ re.loop 5 5) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
(check-sat)
