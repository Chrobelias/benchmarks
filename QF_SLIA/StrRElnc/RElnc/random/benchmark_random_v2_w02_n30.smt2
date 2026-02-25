(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "55" x)))

(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "552"))) (str.to_re "32"))))
(assert (str.in_re x (re.+ (re.union (re.range "2" "5") (re.range "0" "7")))))

(assert (>= (+ (* (- 7) (str.len y)) (* 4 (str.to_int y))) 44))

(check-sat)