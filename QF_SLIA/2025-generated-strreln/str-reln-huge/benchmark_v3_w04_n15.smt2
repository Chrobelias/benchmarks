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

(assert (str.in_re x (re.++ (re.* (re.range "2" "6")) (re.range "2" "5"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "99") (re.++ (re.* (re.range "0" "4")) (str.to_re "3"))) (str.to_re "94"))))
(assert (str.in_re z (re.* (str.to_re "26"))))

(assert (> (+ (* 7 (str.len x)) (* 9 (str.len y)) (* 7 (str.len z))) 76))
(assert (<= (+ (* (- 4) (str.len z)) (* 2 (str.to_int y))) 35))
(assert (<= (+ (* 4 (str.len x)) (* 7 (str.len y))) 83))

(check-sat)