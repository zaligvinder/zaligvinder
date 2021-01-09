(declare-const X String)
; ^(([0-9]{2,4})([-\s\/]{0,1})([0-9]{4,8}))?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 8) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "-") ((_ re.loop 7 7) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2e3gp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".3gp/i\x0a"))))
; /\x3d\x0a$/P
(assert (str.in.re X (str.to.re "/=\x0a/P\x0a")))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (not (str.in.re X (str.to.re "/pagead/ads?waitingisDownload\x0a"))))
(check-sat)
