(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "12")))

(assert (str.in_re y (re.+ (re.union (re.* (str.to_re "663")) (str.to_re "75")))))
(assert (str.in_re x (re.* (re.range "1" "8"))))

(assert (< (+ (* (- 10) (str.len y)) (* (- 2) (str.to_int x)) (* (- 9) (str.to_int y))) 37))

(check-sat)