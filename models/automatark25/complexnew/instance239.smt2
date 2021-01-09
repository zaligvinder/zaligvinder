(declare-const X String)
; .*[a-zA-Z]$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "log={IP:") (re.range "0" "9") (str.to.re ".txt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\x0a"))))
; select\x2FGet\s+Host\x3A.*ppcdomain\x2Eco\x2Euk
(assert (str.in.re X (re.++ (str.to.re "select/Get") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ppcdomain.co.uk\x0a"))))
(check-sat)
