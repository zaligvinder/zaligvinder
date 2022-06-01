(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\u{3A}Class
(assert (not (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}"))))
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}'") (re.* (re.comp (str.to_re "\u{d}"))))))))
; Download\d+ocllceclbhs\u{2f}gth
(assert (not (str.in_re X (re.++ (str.to_re "Download") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
; User-Agent\u{3A}Host\u{3A}TeomaBarHost\u{3A}HoursHost\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:Host:TeomaBarHost:HoursHost:\u{a}")))
; \$(\d*)??,??(\d*)??,??(\d*)\.(\d*)
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
