(declare-const X String)
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "log={IP:") (re.range "0" "9") (str.to.re ".txt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\x0a")))))
; Host\x3AAttachedengineact=Download
(assert (not (str.in.re X (str.to.re "Host:Attachedengineact=Download\x0a"))))
(check-sat)
