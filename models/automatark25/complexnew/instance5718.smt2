(declare-const X String)
; 3AUser-Agent\u{3A}FROM\u{3A}Remoteqlqqlbojvii\u{2f}gtHost\u{3A}
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
; YAHOODesktopHost\u{3a}LOGHost\u{3A}tvshowticketsResultsFROM\u{3A}
(assert (not (str.in_re X (str.to_re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\u{a}"))))
; Host\u{3A}Host\u{3A}User-Agent\u{3A}Serverad\u{2E}mokead\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}"))))
; ^(www\.regxlib\.com)$
(assert (not (str.in_re X (str.to_re "www.regxlib.com\u{a}"))))
; ([1-9]{1,2})?(d|D)([1-9]{1,3})((\+|-)([1-9]{1,3}))?
(assert (not (str.in_re X (re.++ (re.opt ((_ re.loop 1 2) (re.range "1" "9"))) (re.union (str.to_re "d") (str.to_re "D")) ((_ re.loop 1 3) (re.range "1" "9")) (re.opt (re.++ (re.union (str.to_re "+") (str.to_re "-")) ((_ re.loop 1 3) (re.range "1" "9")))) (str.to_re "\u{a}")))))
(check-sat)
