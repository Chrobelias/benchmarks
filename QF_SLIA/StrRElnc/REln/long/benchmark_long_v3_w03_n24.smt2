(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.* (re.union (re.* (str.to_re "70")) (re.* (str.to_re "70"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "333")) (str.to_re "420"))))
(assert (str.in_re x (re.* (str.to_re "531"))))

(assert (< (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int y)) (- (str.to_int z))) 34))
(assert (< (+ (* 7 (str.len x)) (* (- 3) (str.len y)) (* 7 (str.len z))) 13))
(assert (= (+ (* 3 (str.len x)) (* (- 3) (str.len y)) (* (- 5) (str.len z))) 90))

(check-sat)