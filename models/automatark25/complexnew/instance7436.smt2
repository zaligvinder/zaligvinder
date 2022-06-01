(declare-const X String)
; /filename=[^\n]*\u{2e}wal/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wal/i\u{a}"))))
; /filename=[^\n]*\u{2e}motn/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".motn/i\u{a}"))))
; User-Agent\u{3A}From\u{3A}www\u{2E}onlinecasinoextra\u{2E}comHost\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:From:www.onlinecasinoextra.comHost:\u{a}"))))
; www\u{2E}purityscan\u{2E}com.*
(assert (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
