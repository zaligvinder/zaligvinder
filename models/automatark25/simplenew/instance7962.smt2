(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to_re "online-casino-searcher.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:\u{a}")))))
(check-sat)
