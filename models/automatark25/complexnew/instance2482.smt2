(declare-const X String)
; Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011
(assert (not (str.in.re X (str.to.re "Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011\x0a"))))
; [^!~/><\|/#%():;{}`_-]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "!") (str.to.re "~") (str.to.re "/") (str.to.re ">") (str.to.re "<") (str.to.re "|") (str.to.re "#") (str.to.re "%") (str.to.re "(") (str.to.re ")") (str.to.re ":") (str.to.re ";") (str.to.re "{") (str.to.re "}") (str.to.re "`") (str.to.re "_") (str.to.re "-")) (str.to.re "\x0a")))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a"))))
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a") (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
