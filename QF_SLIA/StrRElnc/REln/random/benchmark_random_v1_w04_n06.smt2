(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.* (re.* (str.to_re "165"))) (str.to_re "148")))))

(assert (> (+ (* 6 (str.len x)) (* (- 2) (str.to_int x))) 66))
(assert (> (* 3 (str.len x)) 40))
(assert (>= (* (- 2) (str.to_int x)) 34))

(check-sat)