(declare-const X String)
; www\u{2e}proventactics\u{2e}comKeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (str.to_re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}"))))
; User-Agent\u{3A}ChildWebGuardianHXDownloadX-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\u{13}\u{a}"))))
; ^(\+48\s+)?\d{3}(\s*|\-)\d{3}(\s*|\-)\d{3}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+48") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}emf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".emf/i\u{a}"))))
; /^(www\.|http:\/\/|https:\/\/|http:\/\/www\.|https:\/\/www\.)[a-z0-9]+\.[a-z]{2,4}$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "www.") (str.to_re "http://") (str.to_re "https://") (str.to_re "http://www.") (str.to_re "https://www.")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to_re "/\u{a}")))))
(check-sat)
