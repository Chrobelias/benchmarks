(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "490")) (re.* (str.to_re "885")))))

(assert (<= (+ (* 2 (str.len x)) (* 2 (str.to_int x))) 94))

(check-sat)