(declare-const X String)
; comLOGUser-Agent\u{3A}istsvcwww\u{2E}oemji\u{2E}comSystemSleuth
(assert (str.in_re X (str.to_re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\u{13}\u{a}")))
; (\d+)([,|.\d])*\d
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re "|") (str.to_re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to_re "\u{a}")))))
; ^[0-9]{1}$|^[1-6]{1}[0-3]{1}$|^64$|\-[1-9]{1}$|^\-[1-6]{1}[0-3]{1}$|^\-64$
(assert (not (str.in_re X (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to_re "64") (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 1 1) (re.range "0" "3"))) (str.to_re "-64\u{a}")))))
; Toolbar[^\n\r]*url=\d+Host\u{3A}Welcome\u{2F}communicatortbGateCrasher
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:Welcome/communicatortbGateCrasher\u{a}")))))
; Host\u{3A}\d+Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}"))))
(check-sat)
