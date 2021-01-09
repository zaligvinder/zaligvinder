(declare-const X String)
; ^([A-Z]{0,3})?[ ]?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 0 3) (re.range "A" "Z"))) (re.opt (str.to.re " ")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ re.allchar (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "FTP") (re.* re.allchar) (str.to.re "User-Agent:containsw3whoreport\x0a")))))
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\x0a"))))
; are\d+Version\d+JMailBoxHostGENERAL_PARAM2
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.+ (re.range "0" "9")) (str.to.re "JMailBoxHostGENERAL_PARAM2\x0a"))))
(check-sat)
