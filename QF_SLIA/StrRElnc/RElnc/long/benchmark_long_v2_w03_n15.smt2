(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= y (str.++ "74" x)))

(assert (str.in_re y (re.++ (re.range "6" "9") (re.union (re.* (str.to_re "4")) (str.to_re "5")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "19") (re.+ (str.to_re "402"))) (re.range "4" "8"))))

(assert (< (+ (str.to_int x) (* (- 8) (str.to_int y))) 83))
(assert (<= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 70))
(assert (>= (+ (* (- 7) (str.len x)) (* 5 (str.len y))) 38))

(check-sat)