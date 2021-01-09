(declare-const X String)
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:Host:TeomaBarHost:HoursHost:\x0a")))
(check-sat)
