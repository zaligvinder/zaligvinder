(declare-const X String)
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a")))
; /filename=[^\n]*\x2ejp2/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jp2/i\x0a")))))
; \x28BDLL\x29Googledll\x3F
(assert (str.in.re X (str.to.re "(BDLL)\x13Googledll?\x0a")))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re "?") (str.to.re "*") (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re "<") (str.to.re ":") (str.to.re "|"))) (str.to.re "\x0a")))))
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (str.in.re X (str.to.re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\x0a")))
(check-sat)
