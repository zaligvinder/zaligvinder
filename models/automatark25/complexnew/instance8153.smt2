(declare-const X String)
; on\w+Host\x3AComputerKeylogger\x2EcomHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:ComputerKeylogger.comHost:User-Agent:\x0a")))))
; [^0-9]((\(?(\+420|00420)\)?( |-)?)?([0-9]{3} ?(([0-9]{3} ?[0-9]{3})|([0-9]{2} ?[0-9]{2} ?[0-9]{2})))|([0-9]{3}-(([0-9]{3}-[0-9]{3})|([0-9]{2}-[0-9]{2}-[0-9]{2}))))[^0-9|/]
(assert (str.in.re X (re.++ (re.range "0" "9") (re.union (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.union (str.to.re "+420") (str.to.re "00420")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))) (re.union (re.range "0" "9") (str.to.re "|") (str.to.re "/")) (str.to.re "\x0a"))))
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a")))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
