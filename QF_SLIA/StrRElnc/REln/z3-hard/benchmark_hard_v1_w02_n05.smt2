(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "641")) (re.union (str.to_re "98") (str.to_re "155")))))

(assert (= (+ (* (- 10) (str.len x)) (* 7 (str.to_int x))) 52))

(check-sat)