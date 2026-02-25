(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.union (re.union (re.* (str.to_re "3")) (str.to_re "15")) (str.to_re "68"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "52")) (str.to_re "73"))))
(assert (str.in_re x (re.+ (str.to_re "5"))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 4) (str.len z)) (* (- 10) (str.to_int x)) (* 6 (str.to_int y)) (* (- 8) (str.to_int z))) 40))
(assert (>= (+ (* (- 6) (str.len x)) (* (- 8) (str.len y)) (* 5 (str.len z))) 88))

(check-sat)