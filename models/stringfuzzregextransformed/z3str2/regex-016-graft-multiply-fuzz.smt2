(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "11Jq'\r'W<2a3")))
(assert (= (str.len x) 25))
(assert (not (= x ",(KD1'\r'a{LG{&b&_'Cdc' 'XhK2VAZ.Kdmf'\t'9n\\pbddj2Fmw' '6Kr}k-3aabc""F1D6""_->y.f'\x0c''\n'^E$n_3d")))
(assert (not (= x "aacQM4/JTNct(hk4pO!i<Np' '=Eq?sd>Cnd@9a2$$'\t':W)OUul@hf,?Rfk'\r'DU92<[,NVy}&Tq|d%sL=;eh{@_;UN")))
(check-sat)
