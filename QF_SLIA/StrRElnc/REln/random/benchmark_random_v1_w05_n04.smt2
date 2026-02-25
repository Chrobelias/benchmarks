(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.range "2" "6"))))

(assert (= (* 8 (str.len x)) 14))
(assert (= (* (- 9) (str.to_int x)) 8))
(assert (= (+ (* 10 (str.len x)) (- (str.to_int x))) 99))
(assert (>= (* (- 2) (str.to_int x)) 36))

(check-sat)