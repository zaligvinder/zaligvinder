(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
(check-sat)
