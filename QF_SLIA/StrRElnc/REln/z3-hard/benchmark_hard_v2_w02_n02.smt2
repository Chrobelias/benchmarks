(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "95") (re.union (str.to_re "921") (re.* (str.to_re "31"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "3")) (re.union (str.to_re "390") (str.to_re "884")))))

(assert (= (+ (* 2 (str.len y)) (* 7 (str.to_int x))) 24))

(check-sat)