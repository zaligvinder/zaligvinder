(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (not (str.in.re X (str.to.re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\x0a"))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a"))))
; Host\x3AHost\x3AUser-Agent\x3AServerad\x2Emokead\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:Host:User-Agent:Serverad.mokead.com\x0a"))))
; ^(www\.regxlib\.com)$
(assert (not (str.in.re X (str.to.re "www.regxlib.com\x0a"))))
; ([1-9]{1,2})?(d|D)([1-9]{1,3})((\+|-)([1-9]{1,3}))?
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 1 2) (re.range "1" "9"))) (re.union (str.to.re "d") (str.to.re "D")) ((_ re.loop 1 3) (re.range "1" "9")) (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "-")) ((_ re.loop 1 3) (re.range "1" "9")))) (str.to.re "\x0a")))))
(check-sat)
