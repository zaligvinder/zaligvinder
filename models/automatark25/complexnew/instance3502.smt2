(declare-const X String)
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/iP\x0a"))))
; [\dA-Za-z]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eppt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppt/i\x0a"))))
; <!--[\s\S]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-->\x0a"))))
(check-sat)
