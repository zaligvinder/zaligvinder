(declare-const X String)
; /filename=[^\n]*\x2edae/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dae/i\x0a"))))
; (((^[>]?1.0)(\d)?(\d)?)|(^[<]?1.0(([1-9])|(\d[1-9])|([1-9]\d)))|(^[<]?1.4(0)?(0)?)|(^[<>]?1.(([123])(\d)?(\d)?)))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ">")) (str.to.re "1") re.allchar (str.to.re "0")) (re.++ (re.opt (str.to.re "<")) (str.to.re "1") re.allchar (str.to.re "0") (re.union (re.range "1" "9") (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ (re.opt (str.to.re "<")) (str.to.re "1") re.allchar (str.to.re "4") (re.opt (str.to.re "0")) (re.opt (str.to.re "0"))) (re.++ (re.opt (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "1") re.allchar (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
; [^"\r\n]*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a"))))
(check-sat)
