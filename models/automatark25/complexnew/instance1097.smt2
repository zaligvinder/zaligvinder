(declare-const X String)
; badurl\u{2E}grandstreetinteractive\u{2E}comFilteredHost\u{3A}e2give\.com\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (str.to_re "badurl.grandstreetinteractive.comFilteredHost:e2give.com/newsurfer4/\u{a}"))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (str.in_re X (re.++ (str.to_re "//images2//U\u{a}") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))))
; si=\s+ProAgentUI2Host\u{3A}00000www\u{2E}zhongsou\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "si=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ProAgentUI2Host:00000www.zhongsou.com\u{a}")))))
; /ID3\u{3}\u{0}.{5}([TW][A-Z]{3}|COMM)/smi
(assert (str.in_re X (re.++ (str.to_re "/ID3\u{3}\u{0}") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to_re "T") (str.to_re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to_re "COMM")) (str.to_re "/smi\u{a}"))))
(check-sat)
