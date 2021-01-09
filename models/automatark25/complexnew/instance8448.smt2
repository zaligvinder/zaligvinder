(declare-const X String)
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (str.to.re "\x5c\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.union (str.to.re "\x5c'") (re.comp (str.to.re "'")))) (str.to.re "'")) (re.comp (str.to.re "\x0a")))) (str.to.re "\x0a/gm\x0a")))))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a"))))
(check-sat)
