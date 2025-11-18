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

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "9")) (re.+ (str.to_re "96"))) (str.to_re "90"))))
(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "86")) (re.range "7" "9")))))
(assert (str.in_re z (re.+ (re.union (re.union (re.* (str.to_re "71")) (str.to_re "780")) (str.to_re "78")))))

(assert (<= (+ (* 10 (str.len y)) (* 3 (str.to_int z))) 81))
(assert (>= (+ (* (- 9) (str.len x)) (* (- 7) (str.len y)) (* 8 (str.len z))) 94))
(assert (= (+ (* (- 8) (str.len x)) (* (- 6) (str.to_int y)) (* 7 (str.to_int z))) 63))

(check-sat)