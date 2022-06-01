(declare-const X String)
; <!*[^<>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (str.to_re "!")) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}")))))
; IDENTIFY666User-Agent\u{3A}\u{5B}StaticSend=Host\u{3A}www\.iggsey\.com
(assert (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}")))
(check-sat)
