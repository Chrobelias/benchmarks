(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "33")))

(assert (str.in_re y (re.* (re.+ (re.* (str.to_re "295"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "95") (re.range "2" "6")))))

(assert (>= (+ (* 7 (str.len y)) (* (- 4) (str.to_int y))) 61))
(assert (>= (+ (* 10 (str.to_int x)) (* 6 (str.to_int y))) 47))

(check-sat)