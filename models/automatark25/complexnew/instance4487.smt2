(declare-const X String)
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (not (str.in.re X (str.to.re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\x0a"))))
; [$][0 -9]+
(assert (str.in.re X (re.++ (str.to.re "$") (re.+ (re.union (str.to.re "0") (re.range " " "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a")))))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re "?") (str.to.re "*") (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re "<") (str.to.re ":") (str.to.re "|"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emaki/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maki/i\x0a"))))
(check-sat)
