(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "532")) (str.to_re "0")) (re.range "4" "8"))))
(assert (str.in_re y (re.+ (str.to_re "162"))))
(assert (str.in_re z (re.* (str.to_re "39"))))

(assert (= (+ (* (- 8) (str.to_int x)) (- (str.to_int y)) (* 7 (str.to_int z))) 39))
(assert (<= (+ (* (- 3) (str.len x)) (* 9 (str.len z)) (* (- 8) (str.to_int x))) 12))

(check-sat)