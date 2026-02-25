(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "63" x)))

(assert (str.in_re x (re.* (re.++ (str.to_re "187") (str.to_re "6")))))
(assert (str.in_re y (re.+ (re.range "1" "8"))))

(assert (>= (+ (* 9 (str.len y)) (* (- 7) (str.to_int x))) 99))
(assert (= (+ (* 4 (str.len x)) (* 4 (str.len y))) 47))

(check-sat)