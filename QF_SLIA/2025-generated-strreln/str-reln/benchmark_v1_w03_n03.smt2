(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "434") (str.to_re "52")))))

(assert (<= (+ (* (- 5) (str.len x)) (* 4 (str.to_int x))) 87))
(assert (> (str.to_int x) 68))

(check-sat)