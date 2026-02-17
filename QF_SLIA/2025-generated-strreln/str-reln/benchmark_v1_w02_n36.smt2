(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "50")) (re.* (str.to_re "5")))))

(assert (< (+ (* 4 (str.len x)) (* 6 (str.to_int x))) 13))

(check-sat)