(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "2") (re.+ (str.to_re "915"))) (re.* (str.to_re "71")))))

(assert (>= (* 3 (str.to_int x)) 44))
(assert (= (+ (* (- 3) (str.len x)) (* 2 (str.to_int x))) 37))

(check-sat)