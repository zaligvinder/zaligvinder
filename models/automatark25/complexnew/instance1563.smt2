(declare-const X String)
; cid=tb\u{2e}\s+NETObserve\s+WinSession
(assert (str.in_re X (re.++ (str.to_re "cid=tb.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObserve") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WinSession\u{a}"))))
; User-Agent\u{3A}\s+www\u{2E}myarmory\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.myarmory.com\u{a}"))))
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (str.in_re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}(") ((_ re.loop 2 2) (re.range "0" "9")))))
; Host\u{3a}.*UNSEEN\u{22}\s+Agentbody=\u{25}21\u{25}21\u{25}21Optix
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "UNSEEN\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}")))))
; aohobygi\u{2f}zwiwHost\u{3a}\u{7D}\u{7C}richfind\u{2E}com
(assert (not (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}"))))
(check-sat)
