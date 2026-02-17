(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "95")) (str.to_re "87"))))

(assert (= (+ (* (- 2) (str.len x)) (str.to_int x)) 30))

(check-sat)