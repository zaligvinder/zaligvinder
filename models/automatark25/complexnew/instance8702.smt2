(declare-const X String)
; jsp\d+Host\u{3A}\d+moreKontikiHost\u{3a}AcmeEvilFTP
(assert (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTP\u{a}"))))
; \u{2F}pagead\u{2F}ads\?search2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php
(assert (not (str.in_re X (str.to_re "/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{a}"))))
; /\u{2f}ib2\u{2f}$/U
(assert (not (str.in_re X (str.to_re "//ib2//U\u{a}"))))
; Host\u{3a}\dATTENTION\u{3A}.*User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}"))))
(check-sat)
