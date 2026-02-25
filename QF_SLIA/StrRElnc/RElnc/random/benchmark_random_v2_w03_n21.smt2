(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "37")))

(assert (str.in_re x (re.union (re.* (str.to_re "88")) (re.+ (re.range "0" "8")))))
(assert (str.in_re y (re.* (re.+ (re.++ (str.to_re "73") (re.+ (str.to_re "340")))))))

(assert (= (* (- 8) (str.to_int x)) 93))
(assert (= (+ (* 4 (str.len x)) (* (- 4) (str.to_int y))) 83))

(check-sat)