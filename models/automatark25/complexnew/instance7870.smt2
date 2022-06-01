(declare-const X String)
; www\u{2E}sogou\u{2E}comUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "www.sogou.comUser-Agent:\u{a}")))
; Host\u{3A}\u{2F}ta\u{2F}NEWS\u{2F}yayad\u{2E}com
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{a}")))
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (str.in_re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}(") ((_ re.loop 2 2) (re.range "0" "9")))))
; ^\\([^\\]+\\)*[^\/:*?"<>|]?$
(assert (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (re.++ (re.+ (re.comp (str.to_re "\u{5c}"))) (str.to_re "\u{5c}"))) (re.opt (re.union (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}ogv/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogv/i\u{a}")))))
(check-sat)
