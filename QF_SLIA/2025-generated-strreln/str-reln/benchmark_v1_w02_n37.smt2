(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "76") (re.+ (str.to_re "129")))))

(assert (= (+ (* 5 (str.len x)) (* 3 (str.to_int x))) 34))

(check-sat)