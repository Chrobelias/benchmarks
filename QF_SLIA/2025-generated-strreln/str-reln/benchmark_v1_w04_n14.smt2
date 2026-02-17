(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "50") (re.* (str.to_re "902")))))

(assert (>= (+ (* 7 (str.len x)) (* (- 4) (str.to_int x))) 27))
(assert (>= (str.len x) 90))
(assert (> (* 7 (str.len x)) 78))

(check-sat)