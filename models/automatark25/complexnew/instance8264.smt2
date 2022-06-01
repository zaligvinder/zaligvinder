(declare-const X String)
; Information.*Firewall\s+ised2k\u{c0}STATUS\u{c0}Server
(assert (str.in_re X (re.++ (str.to_re "Information") (re.* re.allchar) (str.to_re "Firewall") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ised2k\u{c0}STATUS\u{c0}Server\u{13}\u{a}"))))
; MyHost\u{3A}toHost\u{3A}WinSessionwww\u{2e}urlblaze\u{2e}netResultHost\u{3A}
(assert (not (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}"))))
; ^(([0-2])?([0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "2")) (re.range "0" "9"))))
(check-sat)
