(declare-const X String)
; BysooTBUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}")))
; to\d+User-Agent\u{3A}Filtered
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{a}"))))
; /domain=[^&]*?([\u{3b}\u{60}]|\u{24}\u{28}|%3b|%60|%24%28)/Pi
(assert (str.in_re X (re.++ (str.to_re "/domain=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "$(") (str.to_re "%3b") (str.to_re "%60") (str.to_re "%24%28") (str.to_re ";") (str.to_re "`")) (str.to_re "/Pi\u{a}"))))
; HWPEMycount\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "HWPEMycount.yok.com\u{a}")))
(check-sat)
