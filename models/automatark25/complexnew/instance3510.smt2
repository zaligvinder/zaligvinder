(declare-const X String)
; ^([A-Z0-9]{5})$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edir/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dir/i\x0a"))))
; ^([0-7]{3})$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "7")) (str.to.re "\x0a"))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a"))))
; AgentHWAEUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "AgentHWAEUser-Agent:\x0a"))))
(check-sat)
