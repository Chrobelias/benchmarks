(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "103") (re.+ (str.to_re "82")))))
(assert (str.in_re z (re.union (str.to_re "3") (re.++ (re.+ (str.to_re "3")) (str.to_re "1")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "0")) (str.to_re "42"))))

(assert (>= (+ (* 2 (str.len x)) (str.len y)) 37))
(assert (= (+ (* (- 4) (str.to_int x)) (* (- 10) (str.to_int y)) (* 5 (str.to_int z))) 60))

(check-sat)