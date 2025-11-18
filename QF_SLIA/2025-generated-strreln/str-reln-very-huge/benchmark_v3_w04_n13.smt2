(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.++ (re.+ (str.to_re "19")) (re.++ (str.to_re "973") (str.to_re "84")))))
(assert (str.in_re y (re.union (str.to_re "88") (re.++ (str.to_re "20") (re.* (str.to_re "952"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "12")) (re.union (str.to_re "79") (str.to_re "4")))))

(assert (>= (+ (* 6 (str.len x)) (* (- 10) (str.len y)) (* 7 (str.len z))) 7))
(assert (<= (+ (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y)) (* 2 (str.to_int z))) 83))
(assert (> (+ (* (- 9) (str.len x)) (* 6 (str.len y)) (* 7 (str.len z))) 44))
(assert (= (+ (* 8 (str.to_int x)) (* (- 10) (str.to_int y))) 80))

(check-sat)