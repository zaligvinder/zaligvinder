(declare-const X String)
; [a-zA-Z0-9]*
(assert (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; this\w+c\.goclick\.com\d
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "c.goclick.com") (re.range "0" "9") (str.to_re "\u{a}"))))
; \.cfg\u{2F}searchfast\u{2F}\u{22}007A-SpyWebsitehttp\u{3A}\u{2F}\u{2F}supremetoolbar\.com\u{2F}index\.php\?tpid=
(assert (str.in_re X (str.to_re ".cfg/searchfast/\u{22}007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\u{a}")))
(check-sat)
