(declare-const X String)
; ICON="[^"]+"
(assert (not (str.in_re X (re.++ (str.to_re "ICON=\u{22}") (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}")))))
(check-sat)
