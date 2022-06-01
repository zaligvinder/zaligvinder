(declare-const X String)
; CUSTOM\swww\u{2E}locators\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "CUSTOM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.locators.comas.starware.com\u{a}"))))
; /filename=[^\n]*\u{2e}qcp/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".qcp/i\u{a}")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\u{13}\u{a}")))
(check-sat)
