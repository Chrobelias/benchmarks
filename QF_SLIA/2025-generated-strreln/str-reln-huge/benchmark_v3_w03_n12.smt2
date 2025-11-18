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

(assert (str.in_re x (re.++ (re.* (str.to_re "78")) (re.++ (str.to_re "8") (re.* (str.to_re "30"))))))
(assert (str.in_re y (re.* (str.to_re "21"))))
(assert (str.in_re z (re.+ (re.++ (re.+ (re.* (str.to_re "811"))) (str.to_re "157")))))

(assert (<= (+ (* (- 9) (str.len x)) (* 9 (str.len y)) (* (- 4) (str.len z))) 19))
(assert (= (+ (* (- 4) (str.len x)) (* (- 6) (str.len y)) (* 4 (str.len z))) 70))
(assert (= (+ (* 9 (str.to_int x)) (* 7 (str.to_int y)) (* (- 5) (str.to_int z))) 75))

(check-sat)