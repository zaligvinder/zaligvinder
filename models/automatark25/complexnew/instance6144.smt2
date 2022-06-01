(declare-const X String)
; /filename=[^\n]*\u{2e}eot/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eot/i\u{a}")))))
; as\u{2E}starware\u{2E}com%3fUser-Agent\u{3A}hostie
(assert (not (str.in_re X (str.to_re "as.starware.com%3fUser-Agent:hostie\u{a}"))))
(check-sat)
