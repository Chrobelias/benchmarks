(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "72")))

(assert (str.in_re y (re.* (re.union (str.to_re "89") (re.+ (re.* (str.to_re "151")))))))
(assert (str.in_re x (re.* (re.union (re.range "0" "7") (str.to_re "132")))))

(assert (= (+ (* (- 5) (str.len x)) (* 10 (str.to_int x))) 68))
(assert (<= (+ (* 5 (str.len y)) (* 8 (str.to_int x)) (* 6 (str.to_int y))) 53))

(check-sat)