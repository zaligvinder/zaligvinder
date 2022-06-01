(declare-const X String)
; search\u{2e}conduit\u{2e}com\d+sidebar\.activeshopper\.comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "search.conduit.com") (re.+ (re.range "0" "9")) (str.to_re "sidebar.activeshopper.comUser-Agent:\u{a}"))))
(check-sat)
