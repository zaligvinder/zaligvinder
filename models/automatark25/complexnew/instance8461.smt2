(declare-const X String)
; /\u{2e}mp4([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mp4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \u{2F}pagead\u{2F}ads\?search2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php
(assert (not (str.in_re X (str.to_re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
(check-sat)
