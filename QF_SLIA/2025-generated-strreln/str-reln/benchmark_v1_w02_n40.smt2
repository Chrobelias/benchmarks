(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "29")) (re.+ (str.to_re "1"))))))

(assert (= (+ (* (- 7) (str.len x)) (* 10 (str.to_int x))) 82))

(check-sat)