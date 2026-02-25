(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "62")) (str.to_re "17"))))
(assert (str.in_re x (re.+ (re.union (str.to_re "715") (re.union (str.to_re "512") (re.* (str.to_re "175")))))))
(assert (str.in_re z (re.+ (str.to_re "4"))))

(assert (<= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y)) (* 7 (str.len z))) 21))
(assert (= (+ (* 9 (str.to_int x)) (* 7 (str.to_int y)) (* 2 (str.to_int z))) 62))

(check-sat)