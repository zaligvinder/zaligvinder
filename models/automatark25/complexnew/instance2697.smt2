(declare-const X String)
; /\/[0-9A-F]{24}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Ui\x0a")))))
; [+]346[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; AgentHWAEUser-Agent\x3A
(assert (str.in.re X (str.to.re "AgentHWAEUser-Agent:\x0a")))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a"))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a")))
(check-sat)
