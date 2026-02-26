(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "97")))

(assert (str.in_re y (re.* (re.union (str.to_re "27") (re.range "2" "7")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "6") (str.to_re "75")))))
(assert (str.in_re x (re.union (re.* (re.range "7" "9")) (str.to_re "4"))))

(assert (>= (+ (* (- 2) (str.len x)) (* 9 (str.len y)) (* 2 (str.len z))) 33))
(assert (>= (+ (* 8 (str.to_int x)) (* 10 (str.to_int y)) (* 3 (str.to_int z))) 32))
(assert (>= (+ (* (- 5) (str.to_int x)) (str.to_int y) (* 5 (str.to_int z))) 29))

(check-sat)