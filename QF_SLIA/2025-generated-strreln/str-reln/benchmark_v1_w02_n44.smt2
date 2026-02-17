(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "272") (str.to_re "527"))))))

(assert (= (+ (* (- 4) (str.len x)) (* 4 (str.to_int x))) 44))

(check-sat)