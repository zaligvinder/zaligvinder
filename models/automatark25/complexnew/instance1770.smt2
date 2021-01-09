(declare-const X String)
; /filename=[^\n]*\x2edws/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a")))))
; OSSProxy\s+%3f\s+Supervisor\s+User-Agent\x3ASearch\stoolbar\.anwb\.nlSpyAgentAdminBladeReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Supervisor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:Search") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlSpyAgentAdminBladeReferer:\x0a")))))
; \x2APORT2\x2Acdpnode=Host\x3A
(assert (str.in.re X (str.to.re "*PORT2*cdpnode=Host:\x0a")))
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
; (^\+?([1-8])?\d(\.\d+)?$)|(^-90$)|(^-(([1-8])?\d(\.\d+)?$))
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "-90") (re.++ (str.to.re "\x0a-") (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
