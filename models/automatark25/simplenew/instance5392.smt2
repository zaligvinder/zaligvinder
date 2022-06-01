(declare-const X String)
; M\u{2E}zip\d+dll\u{3F}\s+CodeguruBrowserwww\u{2E}sogou\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "M.zip") (re.+ (re.range "0" "9")) (str.to_re "dll?") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}"))))
(check-sat)
