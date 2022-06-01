(declare-const X String)
; /filename=[^\n]*\u{2e}wma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
; AgentanswerHost\u{3A}tool\u{2E}world2\u{2E}cnTCwhenu\u{2E}com
(assert (not (str.in_re X (str.to_re "AgentanswerHost:tool.world2.cn\u{13}TCwhenu.com\u{13}\u{a}"))))
; ookflolfctm\u{2f}nmot\.fmu
(assert (not (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}"))))
(check-sat)
