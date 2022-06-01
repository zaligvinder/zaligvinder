(declare-const X String)
; /Referer\u{3a}[^\n]*fla\.php\?wq=[a-f0-9]+\u{d}\u{a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}")))))
(check-sat)
