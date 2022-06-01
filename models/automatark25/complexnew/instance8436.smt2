(declare-const X String)
; ^([A-Z]{0,3})?[ ]?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$
(assert (str.in_re X (re.++ (re.opt ((_ re.loop 0 3) (re.range "A" "Z"))) (re.opt (str.to_re " ")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ re.allchar (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; www\u{2E}ezula\u{2E}com.*FTP.*User-Agent\u{3A}containsw3whoreport
(assert (not (str.in_re X (re.++ (str.to_re "www.ezula.com") (re.* re.allchar) (str.to_re "FTP") (re.* re.allchar) (str.to_re "User-Agent:containsw3whoreport\u{a}")))))
; xbqyosoe\u{2f}cpvmwww\u{2e}urlblaze\u{2e}netconfigINTERNAL\.ini
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\u{a}"))))
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.+ (re.range "0" "9")) (str.to_re "JMailBoxHostGENERAL_PARAM2\u{a}"))))
(check-sat)
