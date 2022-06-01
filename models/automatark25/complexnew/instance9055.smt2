(declare-const X String)
; zopabora\u{2E}info\s+Inside.*User-Agent\u{3A}\s+SystemSleuthserverUser-Agent\u{3a}\u{2F}newsurfer4\u{2F}Microsoft
(assert (not (str.in_re X (re.++ (str.to_re "zopabora.info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Inside") (re.* re.allchar) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SystemSleuth\u{13}serverUser-Agent:/newsurfer4/Microsoft\u{a}")))))
; Current[^\n\r]*server[^\n\r]*Host\u{3A}ocllceclbhs\u{2f}gth
(assert (str.in_re X (re.++ (str.to_re "Current") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "server") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:ocllceclbhs/gth\u{a}"))))
; /filename=[^\n]*\u{2e}vqf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vqf/i\u{a}"))))
; ^(\d?)*\.?(\d{1}|\d{2})?$
(assert (not (str.in_re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (str.to_re ".")) (re.opt (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
