(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "379")) (str.to_re "950")) (str.to_re "747"))))

(assert (= (+ (* (- 7) (str.len x)) (* (- 3) (str.to_int x))) 0))
(assert (< (* 4 (str.len x)) 24))

(check-sat)