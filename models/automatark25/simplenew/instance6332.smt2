(declare-const X String)
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (not (str.in.re X (re.++ (str.to.re "sPatternTablet = '/") (re.union (str.to.re "Tablet") (str.to.re "iPad") (str.to.re "iPod")) (str.to.re "/';\x0a")))))
(check-sat)
