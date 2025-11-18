(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (str.to_re "295") (re.* (str.to_re "824")))))
(assert (str.in_re y (re.union (str.to_re "21") (re.* (str.to_re "431")))))
(assert (str.in_re z (re.* (re.++ (re.++ (str.to_re "28") (re.* (str.to_re "13"))) (str.to_re "147")))))

(assert (= (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y)) (* (- 9) (str.to_int z))) 98))
(assert (> (+ (* 6 (str.len y)) (* (- 4) (str.len z))) 53))
(assert (>= (+ (* (- 6) (str.len x)) (* 8 (str.to_int y))) 33))
(assert (= (+ (* 7 (str.len x)) (* (- 6) (str.len y)) (- (str.len z))) 77))

(check-sat)