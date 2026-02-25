(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.* (str.to_re "99"))))
(assert (str.in_re y (re.* (re.* (re.union (str.to_re "98") (str.to_re "2"))))))
(assert (str.in_re x (re.++ (re.union (str.to_re "90") (str.to_re "149")) (re.+ (str.to_re "266")))))

(assert (>= (+ (* 3 (str.len x)) (* 7 (str.len y)) (* 9 (str.len z))) 27))
(assert (>= (+ (* 4 (str.len x)) (* (- 5) (str.len y)) (- (str.len z))) 25))
(assert (> (+ (* 4 (str.to_int x)) (* (- 2) (str.to_int y)) (* 3 (str.to_int z))) 29))

(check-sat)