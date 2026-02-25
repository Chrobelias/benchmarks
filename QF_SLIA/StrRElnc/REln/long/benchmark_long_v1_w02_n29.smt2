(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (str.to_re "49"))))

(assert (= (+ (* (- 10) (str.len x)) (* 9 (str.to_int x))) 0))

(check-sat)