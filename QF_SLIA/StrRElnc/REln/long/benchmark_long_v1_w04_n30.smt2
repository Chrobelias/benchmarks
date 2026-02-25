(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "42") (re.range "6" "9")))))

(assert (= (str.len x) 100))
(assert (= (+ (* 9 (str.len x)) (* 8 (str.to_int x))) 59))
(assert (> (* (- 9) (str.to_int x)) 24))

(check-sat)