(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (not (str.in_re X (str.to_re "195.225.<title>Actual\u{a}"))))
; search2\.ad\.shopnav\.com\u{2F}9899\u{2F}search\u{2F}results\.php.*Logger.*Subject\u{3a}\s+Host\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to_re "Logger") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}")))))
; ^((\d{1,3}((,\d{3})*|\d*)(\.{0,1})\d+)|\d+)$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to_re "\u{a}")))))
; WebsiteUser-Agent\u{3A}httphostfast-look\u{2E}com
(assert (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}")))
(check-sat)
