(declare-const X String)
; Host\u{3A}\d+\u{2F}communicatortb\swww\.fast-finder\.comBrowser\u{2F}GR
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comBrowser/GR\u{a}"))))
(check-sat)
