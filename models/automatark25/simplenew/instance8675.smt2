(declare-const X String)
; search2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php.*Logger.*Subject\u{3a}\s+Host\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to_re "Logger") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}")))))
(check-sat)
