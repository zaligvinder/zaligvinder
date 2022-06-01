(declare-const X String)
; upgrade\u{2E}qsrch\u{2E}info.*report.*Host\u{3A}.*Host\u{3A}kwd-i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (not (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}")))))
; wowokay\d+FTP\s+Host\u{3A}Filtered\u{22}reaction\u{2E}txt\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
(check-sat)
