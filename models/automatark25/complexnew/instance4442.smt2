(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a")))))
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (not (str.in.re X (str.to.re "AgentanswerHost:tool.world2.cn\x13TCwhenu.com\x13\x0a"))))
; ookflolfctm\x2fnmot\.fmu
(assert (not (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a"))))
(check-sat)
