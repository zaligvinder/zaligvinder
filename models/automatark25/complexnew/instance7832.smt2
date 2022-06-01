(declare-const X String)
; /filename=[^\n]*\u{2e}rt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rt/i\u{a}")))))
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in_re X (re.++ (str.to_re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&v=1./U\u{a}")))))
(check-sat)
