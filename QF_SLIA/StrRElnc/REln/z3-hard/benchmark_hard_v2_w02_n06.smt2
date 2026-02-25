(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.union (str.to_re "42") (re.union (str.to_re "582") (re.+ (str.to_re "511")))))))
(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "7") (re.range "0" "9"))))))

(assert (= (+ (* 4 (str.len y)) (* (- 5) (str.to_int y))) 25))

(check-sat)