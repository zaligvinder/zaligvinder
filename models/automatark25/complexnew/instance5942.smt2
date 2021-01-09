(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in.re X (str.to.re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\x0a")))
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (str.in.re X (str.to.re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\x0a")))
(check-sat)
