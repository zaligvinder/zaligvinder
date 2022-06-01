(declare-const X String)
; actualnames\.comclient\u{2E}baigoo\u{2E}comzzzvmkituktgr\u{2f}etiexpsp2-InformationHost\u{3A}
(assert (not (str.in_re X (str.to_re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\u{a}"))))
; PcastPORT-config\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "PcastPORT-config.180solutions.com\u{a}"))))
(check-sat)
