(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "68")) (re.union (str.to_re "253") (re.range "6" "9")))))
(assert (str.in_re y (re.+ (str.to_re "91"))))

(assert (= (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y))) 21))
(assert (>= (+ (* 7 (str.len x)) (* 10 (str.to_int x))) 41))
(assert (< (+ (* (- 2) (str.to_int x)) (* (- 3) (str.to_int y))) 54))

(check-sat)