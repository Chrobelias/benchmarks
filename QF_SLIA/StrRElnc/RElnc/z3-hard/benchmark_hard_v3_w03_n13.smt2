(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x "77" y)))

(assert (str.in_re y (re.+ (str.to_re "6"))))
(assert (str.in_re x (re.* (str.to_re "99"))))
(assert (str.in_re z (re.union (re.+ (str.to_re "7")) (re.+ (re.range "6" "9")))))

(assert (<= (+ (* 2 (str.len x)) (* 7 (str.to_int y))) 42))
(assert (> (+ (* (- 5) (str.to_int x)) (* 3 (str.to_int y)) (* 2 (str.to_int z))) 41))

(check-sat)