(declare-const X String)
; 100013Agentsvr\u{5E}\u{5E}MerlinIPBeta\s\u{3E}\u{3C}
(assert (not (str.in_re X (re.++ (str.to_re "100013Agentsvr^^Merlin\u{13}IPBeta") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "><\u{a}")))))
; /filename=[^\n]*\u{2e}hpj/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".hpj/i\u{a}")))))
; Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.TROJAN-
(assert (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}")))
; ^0[1-9]\d{7,8}$
(assert (str.in_re X (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; www\u{2E}serverlogic3\u{2E}com\d+ToolBar.*Host\u{3A}HWAEUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.* re.allchar) (str.to_re "Host:HWAEUser-Agent:\u{a}")))))
(check-sat)
