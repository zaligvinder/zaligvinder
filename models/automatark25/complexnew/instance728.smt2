(declare-const X String)
; /nsrjb[^\u{0}]*?([\u{3b}\u{7c}\u{26}\u{60}]|\u{24}\u{28})/
(assert (str.in_re X (re.++ (str.to_re "/nsrjb") (re.* (re.comp (str.to_re "\u{0}"))) (re.union (str.to_re "$(") (str.to_re ";") (str.to_re "|") (str.to_re "&") (str.to_re "`")) (str.to_re "/\u{a}"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (not (str.in_re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; 3AFrom\u{3A}dddrep\u{2E}dudu\u{2E}comform-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}")))
; DownloadDmInf\u{5E}infoSimpsonUser-Agent\u{3A}Client
(assert (str.in_re X (str.to_re "DownloadDmInf^infoSimpsonUser-Agent:Client\u{a}")))
(check-sat)
