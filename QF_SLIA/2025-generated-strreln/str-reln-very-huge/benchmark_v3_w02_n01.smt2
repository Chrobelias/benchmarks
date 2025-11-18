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

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "439")) (str.to_re "6")) (str.to_re "396"))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "81")) (str.to_re "65")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "49")) (str.to_re "6"))))

(assert (= (+ (* 3 (str.len y)) (* (- 8) (str.to_int x)) (* (- 5) (str.to_int z))) 56))

(check-sat)