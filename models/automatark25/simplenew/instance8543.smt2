(declare-const X String)
; User-Agent\u{3A}[^\n\r]*aadserver\dYOUR\u{2F}xml\u{2F}toolbar\u{2F}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "aadserver") (re.range "0" "9") (str.to_re "YOUR/xml/toolbar/\u{a}"))))
(check-sat)
