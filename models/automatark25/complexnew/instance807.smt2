(declare-const X String)
; Yeah\!Host\u{3A}EnTrYwww\u{2E}ZSearchResults\u{2E}com
(assert (not (str.in_re X (str.to_re "Yeah!Host:EnTrYwww.ZSearchResults.com\u{13}\u{a}"))))
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in_re X (str.to_re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\u{a}")))
; Server\u{3A}WordTheHost\u{3a}from
(assert (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}")))
(check-sat)
