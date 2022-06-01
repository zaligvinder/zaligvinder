(declare-const X String)
; StarLoggerCookie\u{3a}Host\u{3A}PRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}"))))
; ^[1-9]\d$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; \u{22}reaction\u{2E}txt\u{22}User-Agent\u{3A}newsSpyAgentsmrtshpr-cs-
(assert (str.in_re X (str.to_re "\u{22}reaction.txt\u{22}User-Agent:newsSpyAgentsmrtshpr-cs-\u{13}\u{a}")))
; TOOLBARX-Mailer\u{3a}+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}"))))
(check-sat)
