(declare-const X String)
; .*[a-zA-Z]$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; connection\sHost\u{3a}Subject\u{3A}\.bmp
(assert (not (str.in_re X (re.++ (str.to_re "connection") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Subject:.bmp\u{a}")))))
; User-Agent\u{3A}User-Agent\u{3a}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
; \.cfg\u{2F}searchfast\u{2F}\u{22}007A-SpyWebsitehttp\u{3A}\u{2F}\u{2F}supremetoolbar\.com\u{2F}index\.php\?tpid=
(assert (str.in_re X (str.to_re ".cfg/searchfast/\u{22}007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\u{a}")))
; Word\s+ExploiterSchwindler\u{2F}r\u{2F}keys\u{2F}keys
(assert (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ExploiterSchwindler/r/keys/keys\u{a}"))))
(check-sat)
