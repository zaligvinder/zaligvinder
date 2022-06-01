(declare-const X String)
; ^[0-9]+(,[0-9]+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; HWAEUser-Agent\u{3A}TestHost\u{3A}www\u{2E}dotcomtoolbar\u{2E}com
(assert (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}")))
; ShadowNetMyAgentServerconfigINTERNAL\.iniKeylogger-Prosearchreslt
(assert (str.in_re X (str.to_re "ShadowNetMyAgentServerconfigINTERNAL.iniKeylogger-Prosearchreslt\u{a}")))
(check-sat)
