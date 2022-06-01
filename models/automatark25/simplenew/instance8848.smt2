(declare-const X String)
; Host\u{3A}User-Agent\u{3A}www\.raxsearch\.com
(assert (str.in_re X (str.to_re "Host:User-Agent:www.raxsearch.com\u{a}")))
(check-sat)
