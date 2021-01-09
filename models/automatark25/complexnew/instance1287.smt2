(declare-const X String)
; PortaUser-Agent\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "PortaUser-Agent:Host:\x0a"))))
; ^((\\){2})(([A-Za-z ',.;]+)(\\?)([A-Za-z ',.;]\\?)*)$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "\x5c")) (str.to.re "\x0a") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";"))) (re.opt (str.to.re "\x5c")) (re.* (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";")) (re.opt (str.to.re "\x5c"))))))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a")))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (str.in.re X (str.to.re "password;1;OptixOwner:Barwww.accoona.com\x0a")))
(check-sat)
