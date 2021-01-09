(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a")))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in.re X (str.to.re "Host:/ta/NEWS/yayad.com\x13\x0a")))
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a(") ((_ re.loop 2 2) (re.range "0" "9")))))
; ^\\([^\\]+\\)*[^\/:*?"<>|]?$
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.opt (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eogv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogv/i\x0a")))))
(check-sat)
