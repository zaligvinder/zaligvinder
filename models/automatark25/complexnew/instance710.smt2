(declare-const X String)
; /\u{2e}cgm([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.cgm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /^\/\d+\/\d\.zip$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re "/") (re.range "0" "9") (str.to_re ".zip/U\u{a}"))))
; ^\d*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; Readydoarauzeraqf\u{2f}vvv\.ulPALTALKHello\u{2E}MyAgentUser-Agent\u{3A}IP-FILEUser-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\u{a}"))))
(check-sat)
