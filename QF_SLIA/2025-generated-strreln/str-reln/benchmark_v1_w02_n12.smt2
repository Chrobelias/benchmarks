(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "8") (re.union (str.to_re "74") (str.to_re "7"))))))

(assert (< (+ (* (- 2) (str.len x)) (* 6 (str.to_int x))) 6))

(check-sat)