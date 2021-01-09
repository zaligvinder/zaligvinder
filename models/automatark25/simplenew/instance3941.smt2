(declare-const X String)
; /Referer\x3a\x20[\x20-\x7E]*?\/wp\x2dadmin\/[a-z\d\x2d]+?\.php\r\n/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.range " " "~")) (str.to.re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".php\x0d\x0a/Hi\x0a")))))
(check-sat)
