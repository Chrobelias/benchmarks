(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "11")) (str.to_re "15"))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "707")) (str.to_re "18")))))
(assert (str.in_re y (re.++ (str.to_re "7") (re.+ (re.++ (str.to_re "940") (str.to_re "6"))))))

(assert (= (+ (* (- 7) (str.len x)) (str.len z) (* (- 5) (str.to_int x))) 48))
(assert (<= (+ (* 5 (str.to_int x)) (* (- 9) (str.to_int y))) 21))

(check-sat)