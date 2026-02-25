(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.* (str.to_re "20"))))
(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "48")) (re.* (str.to_re "802"))) (str.to_re "238"))))
(assert (str.in_re z (re.* (re.union (re.union (str.to_re "0") (str.to_re "752")) (str.to_re "540")))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* 7 (str.to_int y)) (* 10 (str.to_int z))) 85))
(assert (<= (+ (* (- 5) (str.to_int x)) (* 3 (str.to_int y)) (* 5 (str.to_int z))) 37))
(assert (< (+ (* (- 5) (str.len x)) (* (- 3) (str.len y)) (* (- 7) (str.len z))) 3))

(check-sat)