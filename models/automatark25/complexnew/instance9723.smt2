(declare-const X String)
; User-Agent\u{3A}twfofrfzlugq\u{2f}eve\.qduuid=ppcdomain\u{2E}co\u{2E}ukGuardedReferer\u{3A}readyLOGUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\u{a}"))))
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\u{5C}home\/lordofsearch
(assert (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.range "0" "9")) (str.to_re "informationWinInetEvilFTPOSSProxy\u{5c}home/lordofsearch\u{a}"))))
; Hello\u{2E}\s+ovplrichfind\u{2E}comCookie\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Hello.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ovplrichfind.comCookie:\u{a}")))))
; ^(100(\.0{0,2}?)?$|([1-9]|[1-9][0-9])(\.\d{1,2})?)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "100") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (str.to_re "0"))))) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.range "1" "9") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
