(declare-const X String)
; /filename=[^\n]*\u{2e}jpm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpm/i\u{a}"))))
; (\/\/)(.+)(\/\/)
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ re.allchar) (str.to_re "//\u{a}"))))
; Host\u{3A}\s+Agentbody=\u{25}21\u{25}21\u{25}21Optix
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}"))))
(check-sat)
