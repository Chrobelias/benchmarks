(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ "44" z "14" x)))

(assert (str.in_re x (re.* (re.union (str.to_re "567") (str.to_re "349")))))
(assert (str.in_re y (re.union (re.* (re.range "0" "8")) (str.to_re "902"))))
(assert (str.in_re z (re.union (str.to_re "3") (re.++ (str.to_re "314") (re.* (str.to_re "453"))))))

(assert (> (+ (* (- 9) (str.to_int x)) (* (- 10) (str.to_int y)) (* 9 (str.to_int z))) 78))
(assert (> (+ (* 4 (str.len x)) (str.len y) (* 7 (str.len z))) 76))
(assert (>= (+ (* 3 (str.to_int x)) (* 3 (str.to_int y)) (* 9 (str.to_int z))) 43))

(check-sat)