(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "98") (re.* (str.to_re "600")))))

(assert (= (* (- 3) (str.len x)) 53))
(assert (> (* (- 9) (str.to_int x)) 13))

(check-sat)