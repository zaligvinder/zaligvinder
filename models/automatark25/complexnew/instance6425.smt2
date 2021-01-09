(declare-const X String)
; (\_\_)(.+)(\_\_)
(assert (not (str.in.re X (re.++ (str.to.re "__") (re.+ re.allchar) (str.to.re "__\x0a")))))
; Spyware\s+ToolBar\s+User-Agent\x3AMM_RECO\x2EEXEToClientonAlert
(assert (not (str.in.re X (re.++ (str.to.re "Spyware") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:MM_RECO.EXEToClientonAlert\x0a")))))
; /^\/cnt\.php\?id=\d+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//cnt.php?id=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
; track\s+community\d+4\x2e8\x2e4www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "track") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "4.8.4www.maxifiles.com\x0a"))))
; ^(0?\d|1[012])\/([012]?\d|3[01])\/(\d{2}|\d{4})$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
