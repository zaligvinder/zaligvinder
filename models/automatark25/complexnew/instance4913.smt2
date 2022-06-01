(declare-const X String)
; /filename=[^\n]*\u{2e}met/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".met/i\u{a}")))))
; DigExtNetBus\u{5B}Static
(assert (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}")))
(check-sat)
