(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "2")))))
; [\w\-_\+\(\)]{0,}[\.png|\.PNG]{4}
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "_") (str.to.re "+") (str.to.re "(") (str.to.re ")") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 4 4) (re.union (str.to.re ".") (str.to.re "p") (str.to.re "n") (str.to.re "g") (str.to.re "|") (str.to.re "P") (str.to.re "N") (str.to.re "G"))) (str.to.re "\x0a")))))
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (str.in.re X (re.++ (str.to.re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to.re "\x0a"))))
; (^[1-9]$)|(^10$)
(assert (str.in.re X (re.union (re.range "1" "9") (str.to.re "10\x0a"))))
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (str.in.re X (str.to.re "adblock.linkz.comwww.iggsey.comHost:\x0a")))
(check-sat)
