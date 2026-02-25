(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "55" x)))

(assert (str.in_re y (re.+ (re.range "5" "7"))))
(assert (str.in_re x (re.++ (re.++ (re.range "0" "5") (re.* (str.to_re "672"))) (str.to_re "55"))))

(assert (<= (+ (str.len y) (* (- 9) (str.to_int y))) 72))
(assert (>= (+ (* 10 (str.to_int x)) (* (- 5) (str.to_int y))) 37))

(check-sat)