(declare-const X String)
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a")))
; ^\s*(\d{0,2})(\.?(\d*))?\s*\%?\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (re.opt (str.to.re ".")) (re.* (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "%")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /update\/barcab\/.*?tn=.*id=.*version=/smi
(assert (not (str.in.re X (re.++ (str.to.re "/update/barcab/") (re.* re.allchar) (str.to.re "tn=") (re.* re.allchar) (str.to.re "id=") (re.* re.allchar) (str.to.re "version=/smi\x0a")))))
; Spyware\s+ToolBar\s+User-Agent\x3AMM_RECO\x2EEXEToClientonAlert
(assert (not (str.in.re X (re.++ (str.to.re "Spyware") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:MM_RECO.EXEToClientonAlert\x0a")))))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a")))
(check-sat)
