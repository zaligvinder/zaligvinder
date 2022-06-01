(declare-const X String)
; Client.*Peer\s+ThistoIpHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Client") (re.* re.allchar) (str.to_re "Peer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ThistoIpHost:badurl.grandstreetinteractive.com\u{a}"))))
; stats\u{2e}drivecleaner\u{2e}comExciteasdbiz\u{2E}biz
(assert (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}")))
; /\?inf\=[0-9a-f]{8}\u{2E}x\d{2}\u{2E}\d{8}\u{2E}/Ui
(assert (str.in_re X (re.++ (str.to_re "/?inf=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ".x") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "./Ui\u{a}"))))
(check-sat)
