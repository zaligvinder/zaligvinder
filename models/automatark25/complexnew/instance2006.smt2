(declare-const X String)
; www\u{2E}sogou\u{2E}com\s+HWAE\+The\+password\+is\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}")))))
; /filename=[^\n]*\u{2e}pmd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pmd/i\u{a}"))))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.comp (str.to_re "\u{a}")))) (str.to_re "/gm\u{a}")))))
; Cookie\u{3a}AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}"))))
; IPAnaloffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (str.to_re "IPAnaloffers.bullseye-network.com\u{a}")))
(check-sat)
