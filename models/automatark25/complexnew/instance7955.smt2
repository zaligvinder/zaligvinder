(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a"))))
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "\x0d\x0a")) (str.to.re "\x0a'") (re.* (re.comp (str.to.re "\x0d"))))))))
; Download\d+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Download") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a")))))
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:Host:TeomaBarHost:HoursHost:\x0a")))
; \$(\d*)??,??(\d*)??,??(\d*)\.(\d*)
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
