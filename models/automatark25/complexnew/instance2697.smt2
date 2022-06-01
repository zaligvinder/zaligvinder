(declare-const X String)
; /\/[0-9A-F]{24}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/Ui\u{a}")))))
; [+]346[0-9]{8}
(assert (str.in_re X (re.++ (str.to_re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; AgentHWAEUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "AgentHWAEUser-Agent:\u{a}")))
; YWRtaW46cGFzc3dvcmQ\s+www\u{2E}alfacleaner\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.alfacleaner.com\u{a}"))))
; configINTERNAL\.inikwdwww\u{2E}wordiq\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}")))
(check-sat)
