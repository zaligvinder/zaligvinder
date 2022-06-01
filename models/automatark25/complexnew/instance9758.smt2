(declare-const X String)
; \b\w+\b
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}"))))
; <script type="text/javascript">
(assert (str.in_re X (str.to_re "<script type=\u{22}text/javascript\u{22}>\u{a}")))
; comLOGUser-Agent\u{3A}istsvcwww\u{2E}oemji\u{2E}comSystemSleuth
(assert (str.in_re X (str.to_re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\u{13}\u{a}")))
(check-sat)
