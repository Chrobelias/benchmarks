(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "86") (re.* (re.union (re.range "2" "4") (str.to_re "84"))))))

(assert (= (+ (* 5 (str.len x)) (* (- 7) (str.to_int x))) 17))
(assert (<= (* 2 (str.to_int x)) 18))
(assert (= (* (- 7) (str.to_int x)) 12))

(check-sat)