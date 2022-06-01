(declare-const X String)
; Host\u{3A}\s+\.ico\u{2F}sLogearch195\.225\.Referer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico/sLogearch195.225.Referer:\u{a}"))))
; /NICK A\[New\|(98|Me|NT4.0|2000|XP|Serv2003|Vis|7|Unk)\|x(86|64)\|[A-Z\-]{1,2}\|[0-9]{1,4}\]/
(assert (str.in_re X (re.++ (str.to_re "/NICK A[New|") (re.union (str.to_re "98") (str.to_re "Me") (re.++ (str.to_re "NT4") re.allchar (str.to_re "0")) (str.to_re "2000") (str.to_re "XP") (str.to_re "Serv2003") (str.to_re "Vis") (str.to_re "7") (str.to_re "Unk")) (str.to_re "|x") (re.union (str.to_re "86") (str.to_re "64")) (str.to_re "|") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (str.to_re "-"))) (str.to_re "|") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "]/\u{a}"))))
; HXDownload\s+Host\u{3A}ArcadeHourspjpoptwql\u{2f}rlnjFrom\u{3A}
(assert (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}"))))
; \u{D}\u{A}Current\u{2E}earthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
(check-sat)
