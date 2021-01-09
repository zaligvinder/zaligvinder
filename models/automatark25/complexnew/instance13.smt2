(declare-const X String)
; /filename=[^\n]*\x2emks/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mks/i\x0a")))))
; ^(0\.|([1-9]([0-9]+)?)\.){3}(0|([1-9]([0-9]+)?)){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (str.to.re "0.") (re.++ (str.to.re ".") (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) (str.to.re "\x0a")))))
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (str.in.re X (re.++ (str.to.re "sPatternTablet = '/") (re.union (str.to.re "Tablet") (str.to.re "iPad") (str.to.re "iPod")) (str.to.re "/';\x0a"))))
(check-sat)
