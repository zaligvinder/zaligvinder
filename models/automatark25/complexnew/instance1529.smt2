(declare-const X String)
; www\u{2E}ricercadoppia\u{2E}com\s+User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "www.ricercadoppia.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; ((<body)|(<BODY))([^>]*)>
(assert (str.in_re X (re.++ (re.union (str.to_re "<body") (str.to_re "<BODY")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)
