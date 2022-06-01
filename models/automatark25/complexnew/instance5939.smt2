(declare-const X String)
; InformationHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}"))))
; FTPHost\u{3A}User-Agent\u{3a}User\u{3A}distID=deskwizz\u{2E}com
(assert (not (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}"))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (not (str.in_re X (re.++ (str.to_re "/agent_") (re.union (str.to_re "win") (str.to_re "lin") (str.to_re "mac")) (str.to_re "_helper.jar/siU\u{a}")))))
(check-sat)
