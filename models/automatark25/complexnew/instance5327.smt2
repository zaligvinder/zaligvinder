(declare-const X String)
; ^\d*(\.\d*)$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9"))))))
; /filename=[^\n]*\x2eses/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a")))))
; jquery\-(\d|\.)*\.min\.js
(assert (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a"))))
; /filename=[^\n]*\x2epfb/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a"))))
; ^-?[0-9]\d{0,8}(\.\d{1,4})
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.range "0" "9") ((_ re.loop 0 8) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 1 4) (re.range "0" "9")))))
(check-sat)
