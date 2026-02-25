(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "62")))

(assert (str.in_re y (re.union (re.* (re.++ (re.* (str.to_re "96")) (str.to_re "278"))) (str.to_re "285"))))
(assert (str.in_re x (re.* (re.union (re.+ (re.range "2" "8")) (str.to_re "24")))))

(assert (> (+ (* (- 10) (str.len x)) (* (- 4) (str.to_int x)) (* (- 8) (str.to_int y))) 0))

(check-sat)