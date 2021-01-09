(declare-const X String)
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (str.in.re X (str.to.re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\x0a")))
; ^((\d{1,3}(,\d{3})*)|(\d{1,3}))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(1[0-2]|0?[1-9]):([0-5]?[0-9])( AM| PM)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (str.to.re ":\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "AM") (str.to.re "PM"))))))
; /filename=[^\n]*\x2emet/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".met/i\x0a")))))
; style="[^"]*"|'[^']*'
(assert (str.in.re X (re.union (re.++ (str.to.re "style=\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'\x0a")))))
(check-sat)
