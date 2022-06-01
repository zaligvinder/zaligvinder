(declare-const X String)
; CUSTOM\swww\u{2E}locators\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "CUSTOM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.locators.comas.starware.com\u{a}"))))
(check-sat)
