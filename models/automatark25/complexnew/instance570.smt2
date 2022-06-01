(declare-const X String)
; /\u{2e}pub([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.pub") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; adserver\.warezclient\.com530Host\u{3A}
(assert (str.in_re X (str.to_re "adserver.warezclient.com530Host:\u{a}")))
; /filename=[^\n]*\u{2e}csd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csd/i\u{a}"))))
(check-sat)
