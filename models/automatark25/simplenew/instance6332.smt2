(declare-const X String)
; $sPatternTablet = '/(Tablet|iPad|iPod)/';
(assert (not (str.in_re X (re.++ (str.to_re "sPatternTablet = '/") (re.union (str.to_re "Tablet") (str.to_re "iPad") (str.to_re "iPod")) (str.to_re "/';\u{a}")))))
(check-sat)
