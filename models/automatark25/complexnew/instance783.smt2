(declare-const X String)
; /filename=[^&]*?(\x2e|%2e){2}([\x2f\x5c]|%2f|%5c)/Pi
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "&"))) ((_ re.loop 2 2) (re.union (str.to.re ".") (str.to.re "%2e"))) (re.union (str.to.re "%2f") (str.to.re "%5c") (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/Pi\x0a"))))
; /\x26uid\x3d[a-f0-9]{16}($|\x26)/U
(assert (not (str.in.re X (re.++ (str.to.re "/&uid=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/U\x0a")))))
; /filename=[^\n]*\x2evisprj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".visprj/i\x0a")))))
; ^07([\d]{3})[(\D\s)]?[\d]{3}[(\D\s)]?[\d]{3}$
(assert (str.in.re X (re.++ (str.to.re "07") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "(") (re.comp (re.range "0" "9")) (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([0-9a-fA-F])*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
(check-sat)
