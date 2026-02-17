(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.range "1" "4") (str.to_re "845")))))

(assert (>= (+ (* 2 (str.len x)) (* (- 8) (str.to_int x))) 53))

(check-sat)